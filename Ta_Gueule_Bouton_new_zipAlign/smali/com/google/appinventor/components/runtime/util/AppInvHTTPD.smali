.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "AppInvHTTPD.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppInvHTTPD"

.field private static final MIME_JSON:Ljava/lang/String; = "application/json"

.field private static final YAV_SKEW_BACKWARD:I = 0x4

.field private static final YAV_SKEW_FORWARD:I = 0x1

.field private static hmacKey:[B

.field private static seq:I


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private rootDir:Ljava/io/File;

.field private scheme:Lgnu/expr/Language;

.field private secure:Z


# direct methods
.method public constructor <init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "wwwroot"    # Ljava/io/File;
    .param p3, "secure"    # Z
    .param p4, "form"    # Lcom/google/appinventor/components/runtime/ReplForm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    .line 60
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    .line 61
    const-string/jumbo v0, "scheme"

    invoke-static {v0}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    .line 62
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 63
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    .line 64
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object v0
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p1, "infile"    # Ljava/io/File;
    .param p2, "outfile"    # Ljava/io/File;

    .prologue
    .line 411
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 412
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 413
    .local v4, "out":Ljava/io/FileOutputStream;
    const v5, 0x8000

    new-array v0, v5, [B

    .line 416
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_0

    .line 417
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 425
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 420
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 421
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private doPackageUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "inurl"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/PackageInstaller;->doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public static setHmacKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "inputKey"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    .line 433
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 434
    return-void
.end method


# virtual methods
.method public resetSeq()V
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 442
    return-void
.end method

.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 49
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Properties;
    .param p4, "parms"    # Ljava/util/Properties;
    .param p5, "files"    # Ljava/util/Properties;
    .param p6, "mySocket"    # Ljava/net/Socket;

    .prologue
    .line 77
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, " \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "\' "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1

    .line 85
    invoke-virtual/range {p6 .. p6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v29

    .line 86
    .local v29, "myAddress":Ljava/net/InetAddress;
    invoke-virtual/range {v29 .. v29}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    .line 87
    .local v19, "hostAddress":Ljava/lang/String;
    const-string/jumbo v42, "127.0.0.1"

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_1

    .line 88
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "Debug: hostAddress = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, " while in secure mode, closing connection."

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Source Location "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "\"}"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v34, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v19    # "hostAddress":Ljava/lang/String;
    .end local v29    # "myAddress":Ljava/net/InetAddress;
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_0
    :goto_0
    return-object v34

    .line 101
    :cond_1
    const-string/jumbo v42, "OPTIONS"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 105
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 106
    .local v10, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_2

    .line 108
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 109
    .local v40, "value":Ljava/lang/String;
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  HDR: \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "\' = \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "\'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    .end local v40    # "value":Ljava/lang/String;
    :cond_2
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "text/plain"

    const-string/jumbo v44, "OK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v10    # "e":Ljava/util/Enumeration;
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_3
    const-string/jumbo v42, "/_newblocks"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_a

    .line 122
    const-string/jumbo v42, "seq"

    const-string/jumbo v43, "0"

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 123
    .local v22, "inSeq":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 124
    .local v26, "iseq":I
    const-string/jumbo v42, "blockid"

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "blockid":Ljava/lang/String;
    const-string/jumbo v42, "code"

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "code":Ljava/lang/String;
    const-string/jumbo v42, "mac"

    const-string/jumbo v43, "no key provided"

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 127
    .local v21, "inMac":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 128
    .local v9, "compMac":Ljava/lang/String;
    move-object/from16 v23, v8

    .line 129
    .local v23, "input_code":Ljava/lang/String;
    sget-object v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    if-eqz v42, :cond_8

    .line 131
    :try_start_0
    const-string/jumbo v42, "HmacSHA1"

    invoke-static/range {v42 .. v42}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v18

    .line 132
    .local v18, "hmacSha1":Ljavax/crypto/Mac;
    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    const-string/jumbo v43, "RAW"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 133
    .local v27, "key":Ljavax/crypto/spec/SecretKeySpec;
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 134
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v38

    .line 135
    .local v38, "tmpMac":[B
    new-instance v35, Ljava/lang/StringBuffer;

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v42, v0

    mul-int/lit8 v42, v42, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 136
    .local v35, "sb":Ljava/lang/StringBuffer;
    new-instance v17, Ljava/util/Formatter;

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 137
    .local v17, "formatter":Ljava/util/Formatter;
    move-object/from16 v5, v38

    .local v5, "arr$":[B
    array-length v0, v5

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    aget-byte v6, v5, v20

    .line 138
    .local v6, "b":B
    const-string/jumbo v42, "%02x"

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 137
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 139
    .end local v6    # "b":B
    :cond_4
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 147
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "Incoming Mac = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "Computed Mac = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "Incoming seq = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "Computed seq = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget v44, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "blockid = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_5

    .line 153
    const-string/jumbo v42, "AppInvHTTPD"

    const-string/jumbo v43, "Hmac does not match"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string/jumbo v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string/jumbo v48, "Invalid HMAC"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 156
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    const-string/jumbo v44, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 140
    .end local v5    # "arr$":[B
    .end local v17    # "formatter":Ljava/util/Formatter;
    .end local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v20    # "i$":I
    .end local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "len$":I
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35    # "sb":Ljava/lang/StringBuffer;
    .end local v38    # "tmpMac":[B
    :catch_0
    move-exception v10

    .line 141
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v42, "AppInvHTTPD"

    const-string/jumbo v43, "Error working with hmac"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string/jumbo v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string/jumbo v48, "Exception working on HMAC"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 144
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "text/plain"

    const-string/jumbo v44, "NOT"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 159
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v5    # "arr$":[B
    .restart local v17    # "formatter":Ljava/util/Formatter;
    .restart local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v20    # "i$":I
    .restart local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "len$":I
    .restart local v35    # "sb":Ljava/lang/StringBuffer;
    .restart local v38    # "tmpMac":[B
    :cond_5
    sget v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    move/from16 v0, v42

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    sget v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v43, v26, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_6

    .line 160
    const-string/jumbo v42, "AppInvHTTPD"

    const-string/jumbo v43, "Seq does not match"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string/jumbo v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string/jumbo v48, "Invalid Seq"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 163
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    const-string/jumbo v44, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Seq\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 168
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_6
    sget v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v43, v26, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_7

    .line 169
    const-string/jumbo v42, "AppInvHTTPD"

    const-string/jumbo v43, "Seq Fixup Invoked"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_7
    add-int/lit8 v42, v26, 0x1

    sput v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 179
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " (begin "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " )))"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 182
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "To Eval: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :try_start_1
    const-string/jumbo v42, "#f"

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_9

    .line 189
    const-string/jumbo v42, "AppInvHTTPD"

    const-string/jumbo v43, "Skipping evaluation of #f"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_3
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_4
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    .end local v5    # "arr$":[B
    .end local v17    # "formatter":Ljava/util/Formatter;
    .end local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v20    # "i$":I
    .end local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "len$":I
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35    # "sb":Ljava/lang/StringBuffer;
    .end local v38    # "tmpMac":[B
    :cond_8
    const-string/jumbo v42, "AppInvHTTPD"

    const-string/jumbo v43, "No HMAC Key"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string/jumbo v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string/jumbo v48, "No HMAC Key"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 175
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    const-string/jumbo v44, "{\"status\" : \"BAD\", \"message\" : \"Security Error: No HMAC Key\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 191
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v5    # "arr$":[B
    .restart local v17    # "formatter":Ljava/util/Formatter;
    .restart local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v20    # "i$":I
    .restart local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "len$":I
    .restart local v35    # "sb":Ljava/lang/StringBuffer;
    .restart local v38    # "tmpMac":[B
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 194
    :catch_1
    move-exception v12

    .line 195
    .local v12, "ex":Ljava/lang/Throwable;
    const-string/jumbo v42, "AppInvHTTPD"

    const-string/jumbo v43, "newblocks: Scheme Failure"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const-string/jumbo v42, "BAD"

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v7, v0, v1}, Lcom/google/appinventor/components/runtime/util/RetValManager;->appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_4

    .line 204
    .end local v5    # "arr$":[B
    .end local v7    # "blockid":Ljava/lang/String;
    .end local v8    # "code":Ljava/lang/String;
    .end local v9    # "compMac":Ljava/lang/String;
    .end local v12    # "ex":Ljava/lang/Throwable;
    .end local v17    # "formatter":Ljava/util/Formatter;
    .end local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v20    # "i$":I
    .end local v21    # "inMac":Ljava/lang/String;
    .end local v22    # "inSeq":Ljava/lang/String;
    .end local v23    # "input_code":Ljava/lang/String;
    .end local v26    # "iseq":I
    .end local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "len$":I
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35    # "sb":Ljava/lang/StringBuffer;
    .end local v38    # "tmpMac":[B
    :cond_a
    const-string/jumbo v42, "/_values"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_b

    .line 205
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_b
    const-string/jumbo v42, "/_getversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_e

    .line 214
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v31

    .line 216
    .local v31, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v42

    const/16 v43, 0x5

    move/from16 v0, v42

    move/from16 v1, v43

    if-lt v0, v1, :cond_d

    .line 217
    const-string/jumbo v42, "edu.mit.appinventor.aicompanion3Hossein"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    invoke-static/range {v42 .. v43}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v24

    .line 224
    .local v24, "installer":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 225
    .local v41, "versionName":Ljava/lang/String;
    if-nez v24, :cond_c

    .line 226
    const-string/jumbo v24, "Not Known"

    .line 227
    :cond_c
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "{\"version\" : \""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "\", \"fingerprint\" : \""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    sget-object v45, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "\","

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " \"installer\" : \""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "\"}"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 233
    .end local v24    # "installer":Ljava/lang/String;
    .end local v31    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v41    # "versionName":Ljava/lang/String;
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_6
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    move/from16 v42, v0

    if-eqz v42, :cond_0

    .line 238
    const/16 v42, 0x1

    sput v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    new-instance v43, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)V

    invoke-virtual/range {v42 .. v43}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 219
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v31    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_d
    :try_start_4
    const-string/jumbo v24, "Not Known"
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .restart local v24    # "installer":Ljava/lang/String;
    goto/16 :goto_5

    .line 229
    .end local v24    # "installer":Ljava/lang/String;
    .end local v31    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v30

    .line 230
    .local v30, "n":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 231
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    const-string/jumbo v44, "{\"verison\" : \"Unknown\""

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_6

    .line 246
    .end local v30    # "n":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_e
    const-string/jumbo v42, "/_update"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_f

    const-string/jumbo v42, "/_install"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_13

    .line 247
    :cond_f
    const-string/jumbo v42, "url"

    const-string/jumbo v43, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 248
    .local v39, "url":Ljava/lang/String;
    const-string/jumbo v42, "mac"

    const-string/jumbo v43, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 250
    .restart local v21    # "inMac":Ljava/lang/String;
    const-string/jumbo v42, ""

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_12

    sget-object v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    if-eqz v42, :cond_12

    const-string/jumbo v42, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_12

    .line 252
    :try_start_5
    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    const-string/jumbo v43, "RAW"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 253
    .restart local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v42, "HmacSHA1"

    invoke-static/range {v42 .. v42}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v18

    .line 254
    .restart local v18    # "hmacSha1":Ljavax/crypto/Mac;
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 255
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v38

    .line 256
    .restart local v38    # "tmpMac":[B
    new-instance v35, Ljava/lang/StringBuffer;

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v42, v0

    mul-int/lit8 v42, v42, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 257
    .restart local v35    # "sb":Ljava/lang/StringBuffer;
    new-instance v17, Ljava/util/Formatter;

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 258
    .restart local v17    # "formatter":Ljava/util/Formatter;
    move-object/from16 v5, v38

    .restart local v5    # "arr$":[B
    array-length v0, v5

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v20, 0x0

    .restart local v20    # "i$":I
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_10

    aget-byte v6, v5, v20

    .line 259
    .restart local v6    # "b":B
    const-string/jumbo v42, "%02x"

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 258
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 260
    .end local v6    # "b":B
    :cond_10
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v9

    .line 272
    .restart local v9    # "compMac":Ljava/lang/String;
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "Incoming Mac (update) = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "Computed Mac (update) = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_11

    .line 275
    const-string/jumbo v42, "AppInvHTTPD"

    const-string/jumbo v43, "Hmac does not match"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string/jumbo v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string/jumbo v48, "Invalid HMAC (update)"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 278
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    const-string/jumbo v44, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    .end local v5    # "arr$":[B
    .end local v9    # "compMac":Ljava/lang/String;
    .end local v17    # "formatter":Ljava/util/Formatter;
    .end local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v20    # "i$":I
    .end local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "len$":I
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35    # "sb":Ljava/lang/StringBuffer;
    .end local v38    # "tmpMac":[B
    :catch_3
    move-exception v10

    .line 262
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v42, "AppInvHTTPD"

    const-string/jumbo v43, "Error verifying update"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string/jumbo v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string/jumbo v48, "Exception working on HMAC for update"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 265
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    const-string/jumbo v44, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Exception processing MAC\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v5    # "arr$":[B
    .restart local v9    # "compMac":Ljava/lang/String;
    .restart local v17    # "formatter":Ljava/util/Formatter;
    .restart local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v20    # "i$":I
    .restart local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "len$":I
    .restart local v35    # "sb":Ljava/lang/StringBuffer;
    .restart local v38    # "tmpMac":[B
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->doPackageUpdate(Ljava/lang/String;)V

    .line 286
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    const-string/jumbo v44, "{\"status\" : \"OK\", \"message\" : \"Update Should Happen\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    .end local v5    # "arr$":[B
    .end local v9    # "compMac":Ljava/lang/String;
    .end local v17    # "formatter":Ljava/util/Formatter;
    .end local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v20    # "i$":I
    .end local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "len$":I
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35    # "sb":Ljava/lang/StringBuffer;
    .end local v38    # "tmpMac":[B
    :cond_12
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "application/json"

    const-string/jumbo v44, "{\"status\" : \"BAD\", \"message\" : \"Missing Parameters\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    .end local v21    # "inMac":Ljava/lang/String;
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v39    # "url":Ljava/lang/String;
    :cond_13
    const-string/jumbo v42, "/_package"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_15

    .line 302
    const-string/jumbo v42, "package"

    const/16 v43, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 303
    .local v32, "packageapk":Ljava/lang/String;
    if-nez v32, :cond_14

    .line 304
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "text/plain"

    const-string/jumbo v44, "NOT OK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 307
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_14
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v42, "android.intent.action.VIEW"

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v25, "intent":Landroid/content/Intent;
    new-instance v42, Ljava/io/File;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v42 .. v42}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v33

    .line 310
    .local v33, "packageuri":Landroid/net/Uri;
    const-string/jumbo v42, "application/vnd.android.package-archive"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ReplForm;->startActivity(Landroid/content/Intent;)V

    .line 312
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "text/plain"

    const-string/jumbo v44, "OK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 316
    .end local v25    # "intent":Landroid/content/Intent;
    .end local v32    # "packageapk":Ljava/lang/String;
    .end local v33    # "packageuri":Landroid/net/Uri;
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_15
    const-string/jumbo v42, "PUT"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1c

    .line 317
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 318
    .local v11, "error":Ljava/lang/Boolean;
    const-string/jumbo v42, "content"

    const/16 v43, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 319
    .local v37, "tmpFileName":Ljava/lang/String;
    if-eqz v37, :cond_1a

    .line 320
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v37

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v14, "fileFrom":Ljava/io/File;
    const-string/jumbo v42, "filename"

    const/16 v43, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 322
    .local v16, "filename":Ljava/lang/String;
    if-eqz v16, :cond_17

    .line 323
    const-string/jumbo v42, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_16

    const-string/jumbo v42, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_16

    const-string/jumbo v42, "../"

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v42

    if-ltz v42, :cond_17

    .line 325
    :cond_16
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " Ignoring invalid filename: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/16 v16, 0x0

    .line 329
    :cond_17
    if-eqz v16, :cond_19

    .line 331
    new-instance v15, Ljava/io/File;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v15, "fileTo":Ljava/io/File;
    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v42

    if-nez v42, :cond_18

    .line 333
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 334
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 345
    .end local v14    # "fileFrom":Ljava/io/File;
    .end local v15    # "fileTo":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    :cond_18
    :goto_8
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-eqz v42, :cond_1b

    .line 346
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "text/plain"

    const-string/jumbo v44, "NOTOK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v14    # "fileFrom":Ljava/io/File;
    .restart local v16    # "filename":Ljava/lang/String;
    :cond_19
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 338
    const-string/jumbo v42, "AppInvHTTPD"

    const-string/jumbo v43, "Received content without a file name!"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_8

    .line 342
    .end local v14    # "fileFrom":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v42, "AppInvHTTPD"

    const-string/jumbo v43, "Received PUT without content."

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_8

    .line 353
    :cond_1b
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "text/plain"

    const-string/jumbo v44, "OK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    .end local v11    # "error":Ljava/lang/Boolean;
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v37    # "tmpFileName":Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 363
    .local v10, "e":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_1d

    .line 365
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 366
    .restart local v40    # "value":Ljava/lang/String;
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  HDR: \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "\' = \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "\'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 369
    .end local v40    # "value":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {p4 .. p4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 370
    :goto_a
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_1e

    .line 372
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 373
    .restart local v40    # "value":Ljava/lang/String;
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  PRM: \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "\' = \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p4

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "\'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 376
    .end local v40    # "value":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {p5 .. p5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 377
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_23

    .line 379
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 380
    .local v13, "fieldname":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 381
    .local v36, "tempLocation":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 382
    .restart local v16    # "filename":Ljava/lang/String;
    const-string/jumbo v42, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_1f

    const-string/jumbo v42, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_1f

    const-string/jumbo v42, "../"

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v42

    if-ltz v42, :cond_20

    .line 384
    :cond_1f
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " Ignoring invalid filename: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/16 v16, 0x0

    .line 387
    :cond_20
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v36

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .restart local v14    # "fileFrom":Ljava/io/File;
    if-nez v16, :cond_22

    .line 389
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 397
    :cond_21
    :goto_b
    const-string/jumbo v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " UPLOADED: \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "\' was at \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "\'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string/jumbo v42, "200 OK"

    const-string/jumbo v43, "text/plain"

    const-string/jumbo v44, "OK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .restart local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string/jumbo v42, "Access-Control-Allow-Origin"

    const-string/jumbo v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string/jumbo v42, "Access-Control-Allow-Headers"

    const-string/jumbo v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string/jumbo v42, "Access-Control-Allow-Methods"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string/jumbo v42, "Allow"

    const-string/jumbo v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    .end local v34    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_22
    new-instance v15, Ljava/io/File;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .restart local v15    # "fileTo":Ljava/io/File;
    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v42

    if-nez v42, :cond_21

    .line 393
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 394
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto/16 :goto_b

    .line 406
    .end local v13    # "fieldname":Ljava/lang/String;
    .end local v14    # "fileFrom":Ljava/io/File;
    .end local v15    # "fileTo":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v36    # "tempLocation":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v34

    goto/16 :goto_0
.end method
