.class public final Lcom/google/android/gms/internal/dy;
.super Lcom/google/android/gms/internal/dx$a;


# static fields
.field private static final qm:Ljava/lang/Object;

.field private static qn:Lcom/google/android/gms/internal/dy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final qo:Lcom/google/android/gms/internal/ee;

.field private final qp:Lcom/google/android/gms/internal/bj;

.field private final qq:Lcom/google/android/gms/internal/az;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dy;->qm:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/az;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/ee;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dx$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dy;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/dy;->qo:Lcom/google/android/gms/internal/ee;

    iput-object p3, p0, Lcom/google/android/gms/internal/dy;->qp:Lcom/google/android/gms/internal/bj;

    iput-object p2, p0, Lcom/google/android/gms/internal/dy;->qq:Lcom/google/android/gms/internal/az;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/az;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dv;
    .locals 7

    const-string/jumbo v0, "Starting ad request from service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/bj;->init()V

    new-instance v0, Lcom/google/android/gms/internal/ed;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ed;-><init>(Landroid/content/Context;)V

    iget v1, v0, Lcom/google/android/gms/internal/ed;->rj:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "Device is offline."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/dv;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ea;

    iget-object v1, p4, Lcom/google/android/gms/internal/dt;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ea;-><init>(Ljava/lang/String;)V

    iget-object v1, p4, Lcom/google/android/gms/internal/dt;->pV:Lcom/google/android/gms/internal/aj;

    iget-object v1, v1, Lcom/google/android/gms/internal/aj;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p4, Lcom/google/android/gms/internal/dt;->pV:Lcom/google/android/gms/internal/aj;

    iget-object v1, v1, Lcom/google/android/gms/internal/aj;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "_ad"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0, p4, v1}, Lcom/google/android/gms/internal/dz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Ljava/lang/String;)Lcom/google/android/gms/internal/dv;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xfa

    invoke-interface {p2, v1, v2}, Lcom/google/android/gms/internal/bj;->a(J)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/az;->aI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/az;->aJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v0, v1, v2}, Lcom/google/android/gms/internal/dz;->a(Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/ed;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/dv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(I)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/dy;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ez$a;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/dy$1;

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dy$1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/ea;Lcom/google/android/gms/internal/ez$a;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ea;->bs()Lcom/google/android/gms/internal/ec;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/dv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ea;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->bv()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p4, Lcom/google/android/gms/internal/dt;->pW:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ee;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v2, p4, Lcom/google/android/gms/internal/dt;->kO:Lcom/google/android/gms/internal/ew;

    iget-object v2, v2, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v0, v1}, Lcom/google/android/gms/internal/dy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ec;)Lcom/google/android/gms/internal/dv;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ec;)Lcom/google/android/gms/internal/dv;
    .locals 10

    const/16 v9, 0x12c

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/eb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/eb;-><init>()V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :try_start_1
    invoke-static {p0, p1, v6, v0}, Lcom/google/android/gms/internal/ep;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "x-afma-drt-cookie"

    invoke-virtual {v0, v6, p3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ec;->bu()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ec;->bu()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    const/16 v8, 0xc8

    if-lt v6, v8, :cond_2

    if-ge v6, v9, :cond_2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2, v6}, Lcom/google/android/gms/internal/dy;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v3, v1, v7, v2}, Lcom/google/android/gms/internal/eb;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/eb;->i(J)Lcom/google/android/gms/internal/dv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v2, v7, v8, v6}, Lcom/google/android/gms/internal/dy;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    if-lt v6, v9, :cond_4

    const/16 v2, 0x190

    if-ge v6, v2, :cond_4

    const-string/jumbo v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v1, "No location header to follow redirect."

    invoke-static {v1}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/dv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dv;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_3
    :try_start_5
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x5

    if-le v1, v6, :cond_5

    const-string/jumbo v1, "Too many redirects."

    invoke-static {v1}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/dv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dv;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_4
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received error HTTP response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/dv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dv;-><init>(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_5
    :try_start_9
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/eb;->d(Ljava/util/Map;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error while connecting to ad server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/dv;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(I)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/az;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/ee;)Lcom/google/android/gms/internal/dy;
    .locals 3

    sget-object v1, Lcom/google/android/gms/internal/dy;->qm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/dy;->qn:Lcom/google/android/gms/internal/dy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/dy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2, p3}, Lcom/google/android/gms/internal/dy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/az;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/ee;)V

    sput-object v0, Lcom/google/android/gms/internal/dy;->qn:Lcom/google/android/gms/internal/dy;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/dy;->qn:Lcom/google/android/gms/internal/dy;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Http Response: {\n  URL:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Response Code:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static s(Ljava/lang/String;)Lcom/google/android/gms/internal/ez$a;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dy$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dy$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dv;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/dy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/dy;->qq:Lcom/google/android/gms/internal/az;

    iget-object v2, p0, Lcom/google/android/gms/internal/dy;->qp:Lcom/google/android/gms/internal/bj;

    iget-object v3, p0, Lcom/google/android/gms/internal/dy;->qo:Lcom/google/android/gms/internal/ee;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/dy;->a(Landroid/content/Context;Lcom/google/android/gms/internal/az;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dv;

    move-result-object v0

    return-object v0
.end method
