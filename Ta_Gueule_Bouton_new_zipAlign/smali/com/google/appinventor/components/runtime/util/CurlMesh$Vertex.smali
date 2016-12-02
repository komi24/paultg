.class Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
.super Ljava/lang/Object;
.source "CurlMesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CurlMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vertex"
.end annotation


# instance fields
.field public mAlpha:D

.field public mColor:D

.field public mPenumbraX:D

.field public mPenumbraY:D

.field public mPosX:D

.field public mPosY:D

.field public mPosZ:D

.field public mTexX:D

.field public mTexY:D

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/CurlMesh;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V
    .locals 2

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->this$0:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    .line 1037
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mAlpha:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mColor:D

    .line 1038
    return-void
.end method


# virtual methods
.method public rotateZ(D)V
    .locals 17
    .param p1, "theta"    # D

    .prologue
    .line 1041
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 1042
    .local v1, "cos":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 1043
    .local v7, "sin":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    mul-double/2addr v13, v1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    mul-double/2addr v15, v7

    add-double v9, v13, v15

    .line 1044
    .local v9, "x":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    neg-double v15, v7

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    mul-double/2addr v15, v1

    add-double v11, v13, v15

    .line 1045
    .local v11, "y":D
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    .line 1046
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    .line 1047
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    mul-double/2addr v13, v1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    mul-double/2addr v15, v7

    add-double v3, v13, v15

    .line 1048
    .local v3, "px":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    neg-double v15, v7

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    mul-double/2addr v15, v1

    add-double v5, v13, v15

    .line 1049
    .local v5, "py":D
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    .line 1050
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    .line 1051
    return-void
.end method

.method public set(Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;)V
    .locals 2
    .param p1, "vertex"    # Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .prologue
    .line 1054
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    .line 1055
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    .line 1056
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    .line 1057
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    .line 1058
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D

    .line 1059
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    .line 1060
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    .line 1061
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mColor:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mColor:D

    .line 1062
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mAlpha:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mAlpha:D

    .line 1063
    return-void
.end method

.method public translate(DD)V
    .locals 2
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    .line 1066
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    .line 1067
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    .line 1068
    return-void
.end method
