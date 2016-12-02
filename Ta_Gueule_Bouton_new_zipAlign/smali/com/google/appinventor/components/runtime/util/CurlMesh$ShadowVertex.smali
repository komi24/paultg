.class Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;
.super Ljava/lang/Object;
.source "CurlMesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CurlMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShadowVertex"
.end annotation


# instance fields
.field public mPenumbraColor:D

.field public mPenumbraX:D

.field public mPenumbraY:D

.field public mPosX:D

.field public mPosY:D

.field public mPosZ:D

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/CurlMesh;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->this$0:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;Lcom/google/appinventor/components/runtime/util/CurlMesh$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/util/CurlMesh;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/util/CurlMesh$1;

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    return-void
.end method
