.class Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;
.super Ljava/lang/Object;
.source "CurlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CurlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointerPosition"
.end annotation


# instance fields
.field mPos:Landroid/graphics/PointF;

.field mPressure:F

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/CurlView;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/CurlView;)V
    .locals 1

    .prologue
    .line 935
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->this$0:Lcom/google/appinventor/components/runtime/util/CurlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/CurlView;Lcom/google/appinventor/components/runtime/util/CurlView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/util/CurlView;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/util/CurlView$1;

    .prologue
    .line 935
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;-><init>(Lcom/google/appinventor/components/runtime/util/CurlView;)V

    return-void
.end method
