.class public Lcom/google/appinventor/components/runtime/util/CurlView;
.super Landroid/opengl/GLSurfaceView;
.source "CurlView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/CurlView$1;,
        Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;,
        Lcom/google/appinventor/components/runtime/util/CurlView$SizeChangedObserver;,
        Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;
    }
.end annotation


# static fields
.field private static final CURL_LEFT:I = 0x1

.field private static final CURL_NONE:I = 0x0

.field private static final CURL_RIGHT:I = 0x2

.field private static final SET_CURL_TO_LEFT:I = 0x1

.field private static final SET_CURL_TO_RIGHT:I = 0x2

.field public static final SHOW_ONE_PAGE:I = 0x1

.field public static final SHOW_TWO_PAGES:I = 0x2


# instance fields
.field private mAllow2PagesLandscape:Z

.field private mAllowLastPageCurl:Z

.field private mAnimate:Z

.field private mAnimationDurationTime:J

.field private mAnimationSource:Landroid/graphics/PointF;

.field private mAnimationStartTime:J

.field private mAnimationTarget:Landroid/graphics/PointF;

.field private mAnimationTargetEvent:I

.field private mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

.field private mCurlDir:Landroid/graphics/PointF;

.field private mCurlPos:Landroid/graphics/PointF;

.field private mCurlState:I

.field private mCurrentIndex:I

.field private mDragStartPos:Landroid/graphics/PointF;

.field private mEnableTouchPressure:Z

.field private mPageBitmapHeight:I

.field private mPageBitmapWidth:I

.field private mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

.field private mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

.field private mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

.field private mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

.field private mRenderLeftPage:Z

.field private mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

.field private mSizeChangedObserver:Lcom/google/appinventor/components/runtime/util/CurlView$SizeChangedObserver;

.field private mViewMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 25
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    .line 27
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderLeftPage:Z

    .line 28
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllowLastPageCurl:Z

    .line 30
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllow2PagesLandscape:Z

    .line 42
    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    .line 45
    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    .line 48
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    .line 49
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    .line 53
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;-><init>(Lcom/google/appinventor/components/runtime/util/CurlView;Lcom/google/appinventor/components/runtime/util/CurlView$1;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    .line 57
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimate:Z

    .line 58
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationSource:Landroid/graphics/PointF;

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTarget:Landroid/graphics/PointF;

    .line 61
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationDurationTime:J

    .line 72
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mEnableTouchPressure:Z

    .line 79
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CurlView;->init(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    .line 27
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderLeftPage:Z

    .line 28
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllowLastPageCurl:Z

    .line 30
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllow2PagesLandscape:Z

    .line 42
    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    .line 45
    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    .line 48
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    .line 49
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    .line 53
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;-><init>(Lcom/google/appinventor/components/runtime/util/CurlView;Lcom/google/appinventor/components/runtime/util/CurlView$1;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    .line 57
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimate:Z

    .line 58
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationSource:Landroid/graphics/PointF;

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTarget:Landroid/graphics/PointF;

    .line 61
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationDurationTime:J

    .line 72
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mEnableTouchPressure:Z

    .line 87
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CurlView;->init(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/CurlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 467
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;-><init>(Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    .line 468
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/CurlView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 469
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/CurlView;->setRenderMode(I)V

    .line 470
    invoke-virtual {p0, p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;-><init>(I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 476
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;-><init>(I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 477
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;-><init>(I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 478
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 479
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 480
    return-void
.end method

.method private setCurlPos(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V
    .locals 10
    .param p1, "curlPos"    # Landroid/graphics/PointF;
    .param p2, "curlDir"    # Landroid/graphics/PointF;
    .param p3, "radius"    # D

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 488
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-eq v6, v8, :cond_0

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v6, v7, :cond_5

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-ne v6, v7, :cond_5

    .line 490
    :cond_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v8}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    .line 491
    .local v4, "pageRect":Landroid/graphics/RectF;
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 492
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 493
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->requestRender()V

    .line 544
    .end local v4    # "pageRect":Landroid/graphics/RectF;
    :goto_0
    return-void

    .line 496
    .restart local v4    # "pageRect":Landroid/graphics/RectF;
    :cond_1
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 497
    iget v6, v4, Landroid/graphics/RectF;->left:F

    iput v6, p1, Landroid/graphics/PointF;->x:F

    .line 499
    :cond_2
    iget v6, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_3

    .line 500
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v6, v7

    .line 501
    .local v0, "diffX":F
    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v0

    iget v8, p2, Landroid/graphics/PointF;->y:F

    div-float/2addr v7, v8

    add-float v3, v6, v7

    .line 502
    .local v3, "leftY":F
    iget v6, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_4

    iget v6, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v3, v6

    if-gez v6, :cond_4

    .line 503
    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/PointF;->x:F

    .line 504
    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v7, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/PointF;->y:F

    .line 534
    .end local v0    # "diffX":F
    .end local v3    # "leftY":F
    .end local v4    # "pageRect":Landroid/graphics/RectF;
    :cond_3
    :goto_1
    iget v6, p2, Landroid/graphics/PointF;->x:F

    iget v7, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    iget v7, p2, Landroid/graphics/PointF;->y:F

    iget v8, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 535
    .local v1, "dist":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v1, v6

    if-eqz v6, :cond_9

    .line 536
    iget v6, p2, Landroid/graphics/PointF;->x:F

    float-to-double v6, v6

    div-double/2addr v6, v1

    double-to-float v6, v6

    iput v6, p2, Landroid/graphics/PointF;->x:F

    .line 537
    iget v6, p2, Landroid/graphics/PointF;->y:F

    float-to-double v6, v6

    div-double/2addr v6, v1

    double-to-float v6, v6

    iput v6, p2, Landroid/graphics/PointF;->y:F

    .line 538
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v6, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->curl(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V

    .line 543
    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->requestRender()V

    goto :goto_0

    .line 505
    .end local v1    # "dist":D
    .restart local v0    # "diffX":F
    .restart local v3    # "leftY":F
    .restart local v4    # "pageRect":Landroid/graphics/RectF;
    :cond_4
    iget v6, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_3

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v3, v6

    if-lez v6, :cond_3

    .line 506
    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/PointF;->x:F

    .line 507
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 510
    .end local v0    # "diffX":F
    .end local v3    # "leftY":F
    .end local v4    # "pageRect":Landroid/graphics/RectF;
    :cond_5
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v6, v7, :cond_3

    .line 511
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    .line 512
    .restart local v4    # "pageRect":Landroid/graphics/RectF;
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    .line 513
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 514
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->requestRender()V

    goto/16 :goto_0

    .line 517
    :cond_6
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 518
    iget v6, v4, Landroid/graphics/RectF;->right:F

    iput v6, p1, Landroid/graphics/PointF;->x:F

    .line 520
    :cond_7
    iget v6, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_3

    .line 521
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v6, v7

    .line 522
    .restart local v0    # "diffX":F
    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v0

    iget v8, p2, Landroid/graphics/PointF;->y:F

    div-float/2addr v7, v8

    add-float v5, v6, v7

    .line 523
    .local v5, "rightY":F
    iget v6, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_8

    iget v6, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_8

    .line 524
    iget v6, v4, Landroid/graphics/RectF;->top:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/PointF;->x:F

    .line 525
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    .line 526
    :cond_8
    iget v6, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_3

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    .line 527
    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/PointF;->x:F

    .line 528
    iget v6, v4, Landroid/graphics/RectF;->right:F

    iget v7, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    .line 540
    .end local v0    # "diffX":F
    .end local v4    # "pageRect":Landroid/graphics/RectF;
    .end local v5    # "rightY":F
    .restart local v1    # "dist":D
    :cond_9
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    goto/16 :goto_2
.end method

.method private startCurl(I)V
    .locals 11
    .param p1, "page"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 551
    packed-switch p1, :pswitch_data_0

    .line 701
    :goto_0
    return-void

    .line 558
    :pswitch_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 559
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 560
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 563
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 564
    .local v2, "curl":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 565
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 567
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-eq v3, v7, :cond_0

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllow2PagesLandscape:Z

    if-nez v3, :cond_3

    .line 570
    :cond_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    if-lez v3, :cond_1

    .line 571
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v4, v7}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 572
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 573
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderLeftPage:Z

    if-eqz v3, :cond_1

    .line 574
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 578
    :cond_1
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 579
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 581
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v0, v10}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 582
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v4, v8}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 584
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 585
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 586
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 616
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v4, v8}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 617
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 618
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 619
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 621
    iput v8, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    goto/16 :goto_0

    .line 589
    :cond_3
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    if-lez v3, :cond_4

    .line 590
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v4, v7}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 592
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 593
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderLeftPage:Z

    if-eqz v3, :cond_4

    .line 594
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 597
    :cond_4
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_2

    .line 598
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v6, v6, 0x2

    invoke-interface {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 601
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    if-ge v3, v4, :cond_5

    .line 602
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v6, v6, 0x3

    invoke-interface {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 607
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    :goto_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 608
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v4, v8}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 609
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 610
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 611
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    goto/16 :goto_1

    .line 605
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    :cond_5
    move-object v1, v0

    .restart local v1    # "bitmap2":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 630
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    .end local v2    # "curl":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    :pswitch_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 631
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 632
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 635
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 636
    .restart local v2    # "curl":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 637
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 639
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-eq v3, v7, :cond_6

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllow2PagesLandscape:Z

    if-nez v3, :cond_9

    .line 641
    :cond_6
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    if-le v3, v7, :cond_7

    .line 642
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v6, v6, -0x2

    invoke-interface {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 644
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v0, v10}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 645
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v4, v7}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 647
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v7}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 648
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 649
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderLeftPage:Z

    if-eqz v3, :cond_7

    .line 650
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 671
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    :goto_3
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 672
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v4, v8}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 674
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 675
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 679
    :cond_8
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-ne v3, v7, :cond_a

    .line 680
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v4, v8}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 682
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 693
    :goto_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 694
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 696
    iput v7, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    goto/16 :goto_0

    .line 654
    :cond_9
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    if-le v3, v8, :cond_7

    .line 655
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v6, v6, -0x3

    invoke-interface {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 657
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v6, v6, -0x4

    invoke-interface {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 659
    .restart local v1    # "bitmap2":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 660
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v4, v7}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 662
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 663
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 664
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderLeftPage:Z

    if-eqz v3, :cond_7

    .line 665
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    goto/16 :goto_3

    .line 684
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    :cond_a
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v4, v7}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 686
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllow2PagesLandscape:Z

    if-eqz v3, :cond_b

    .line 687
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    goto :goto_4

    .line 689
    :cond_b
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v3, v7}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    goto :goto_4

    .line 551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateBitmaps()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 707
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    if-lez v5, :cond_0

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    if-gtz v5, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 714
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 715
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 717
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-eq v5, v10, :cond_2

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllow2PagesLandscape:Z

    if-nez v5, :cond_9

    .line 718
    :cond_2
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v3, v5, -0x1

    .line 719
    .local v3, "leftIdx":I
    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    .line 720
    .local v4, "rightIdx":I
    const/4 v2, -0x1

    .line 721
    .local v2, "curlIdx":I
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v5, v10, :cond_7

    .line 722
    move v2, v3

    .line 723
    add-int/lit8 v3, v3, -0x1

    .line 729
    :cond_3
    :goto_1
    if-ltz v4, :cond_4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 730
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    invoke-interface {v5, v6, v7, v4}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 732
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v0, v8}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 733
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v9}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 734
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 735
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 737
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    if-ltz v3, :cond_5

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 738
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    invoke-interface {v5, v6, v7, v3}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 740
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v0, v8}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 741
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v10}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 742
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 743
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderLeftPage:Z

    if-eqz v5, :cond_5

    .line 744
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 747
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    if-ltz v2, :cond_0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 748
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    invoke-interface {v5, v6, v7, v2}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 750
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v0, v8}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 751
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-eq v5, v9, :cond_6

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v5, v10, :cond_8

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-ne v5, v9, :cond_8

    .line 753
    :cond_6
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v9}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 759
    :goto_2
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 760
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    goto/16 :goto_0

    .line 724
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v5, v9, :cond_3

    .line 725
    move v2, v4

    .line 726
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 756
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v10}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    goto :goto_2

    .line 765
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "curlIdx":I
    .end local v3    # "leftIdx":I
    .end local v4    # "rightIdx":I
    :cond_9
    const/4 v2, -0x1

    .line 766
    .restart local v2    # "curlIdx":I
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_e

    .line 767
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v3, v5, -0x1

    .line 768
    .restart local v3    # "leftIdx":I
    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    .line 774
    .restart local v4    # "rightIdx":I
    :goto_3
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v5, v10, :cond_f

    .line 775
    move v2, v3

    .line 776
    add-int/lit8 v3, v3, -0x1

    .line 783
    :cond_a
    :goto_4
    if-ltz v4, :cond_b

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_b

    .line 784
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    invoke-interface {v5, v6, v7, v4}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 786
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 788
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 790
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v9}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 791
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 792
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 794
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    :cond_b
    if-ltz v3, :cond_c

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v5

    if-ge v3, v5, :cond_c

    .line 795
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    invoke-interface {v5, v6, v7, v3}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 797
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 799
    .restart local v1    # "bitmap2":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 800
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v10}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 801
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 802
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderLeftPage:Z

    if-eqz v5, :cond_c

    .line 803
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 806
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    :cond_c
    if-ltz v2, :cond_0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    .line 807
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    invoke-interface {v5, v6, v7, v2}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 809
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 811
    .restart local v1    # "bitmap2":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 812
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-eq v5, v9, :cond_d

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v5, v10, :cond_10

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-ne v5, v9, :cond_10

    .line 814
    :cond_d
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v9}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 820
    :goto_5
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 821
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    goto/16 :goto_0

    .line 770
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    .end local v3    # "leftIdx":I
    .end local v4    # "rightIdx":I
    :cond_e
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    .line 771
    .restart local v3    # "leftIdx":I
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v4, v5, 0x1

    .line 772
    .restart local v4    # "rightIdx":I
    iput v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    goto/16 :goto_3

    .line 777
    :cond_f
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v5, v9, :cond_a

    .line 778
    move v2, v4

    .line 779
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 817
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap2":Landroid/graphics/Bitmap;
    :cond_10
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v10}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    goto :goto_5
.end method

.method private updateCurlPos(Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;)V
    .locals 21
    .param p1, "pointerPos"    # Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    .prologue
    .line 832
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40400000    # 3.0f

    div-float/2addr v14, v15

    float-to-double v10, v14

    .line 838
    .local v10, "radius":D
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPressure:F

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    float-to-double v14, v14

    mul-double/2addr v10, v14

    .line 844
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v14, v15}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 848
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 851
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    iput v15, v14, Landroid/graphics/PointF;->x:F

    .line 852
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    iput v15, v14, Landroid/graphics/PointF;->y:F

    .line 853
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v6, v14

    .line 858
    .local v6, "dist":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v9

    .line 860
    .local v9, "pageWidth":F
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v10, v14

    .line 861
    .local v4, "curlLen":D
    float-to-double v14, v6

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, v9

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v16, v4

    cmpl-double v14, v14, v16

    if-lez v14, :cond_1

    .line 862
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v9

    sub-float/2addr v14, v6

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    float-to-double v4, v14

    .line 863
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double v10, v4, v14

    .line 867
    :cond_1
    float-to-double v14, v6

    cmpl-double v14, v14, v4

    if-ltz v14, :cond_4

    .line 868
    float-to-double v14, v6

    sub-double/2addr v14, v4

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v12, v14, v16

    .line 869
    .local v12, "translate":D
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 870
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/PointF;->x:F

    float-to-double v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v12

    float-to-double v0, v6

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    sub-double v15, v15, v17

    double-to-float v15, v15

    iput v15, v14, Landroid/graphics/PointF;->x:F

    .line 875
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/PointF;->y:F

    float-to-double v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v12

    float-to-double v0, v6

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    sub-double v15, v15, v17

    double-to-float v15, v15

    iput v15, v14, Landroid/graphics/PointF;->y:F

    .line 896
    .end local v4    # "curlLen":D
    .end local v6    # "dist":F
    .end local v9    # "pageWidth":F
    .end local v12    # "translate":D
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v10, v11}, Lcom/google/appinventor/components/runtime/util/CurlView;->setCurlPos(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V

    .line 897
    return-void

    .line 872
    .restart local v4    # "curlLen":D
    .restart local v6    # "dist":F
    .restart local v9    # "pageWidth":F
    .restart local v12    # "translate":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v14

    iget v7, v14, Landroid/graphics/RectF;->left:F

    .line 873
    .local v7, "pageLeftX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v7

    float-to-double v14, v14

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    goto :goto_0

    .line 877
    .end local v7    # "pageLeftX":F
    .end local v12    # "translate":D
    :cond_4
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    float-to-double v0, v6

    move-wide/from16 v16, v0

    div-double v16, v16, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    mul-double v2, v14, v16

    .line 878
    .local v2, "angle":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v12, v10, v14

    .line 879
    .restart local v12    # "translate":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/PointF;->x:F

    float-to-double v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v12

    float-to-double v0, v6

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    add-double v15, v15, v17

    double-to-float v15, v15

    iput v15, v14, Landroid/graphics/PointF;->x:F

    .line 880
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/PointF;->y:F

    float-to-double v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v12

    float-to-double v0, v6

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    add-double v15, v15, v17

    double-to-float v15, v15

    iput v15, v14, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    .line 884
    .end local v2    # "angle":D
    .end local v4    # "curlLen":D
    .end local v6    # "dist":F
    .end local v9    # "pageWidth":F
    .end local v12    # "translate":D
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 887
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v14

    iget v7, v14, Landroid/graphics/RectF;->left:F

    .line 888
    .restart local v7    # "pageLeftX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v7

    float-to-double v14, v14

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 890
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v14

    iget v8, v14, Landroid/graphics/RectF;->right:F

    .line 891
    .local v8, "pageRightX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/PointF;->x:F

    float-to-double v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    sub-float v17, v8, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v17

    sub-double v15, v15, v17

    double-to-float v15, v15

    iput v15, v14, Landroid/graphics/PointF;->x:F

    .line 892
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    add-float v15, v15, v16

    iput v15, v14, Landroid/graphics/PointF;->x:F

    .line 893
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlDir:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlPos:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    iput v15, v14, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    return v0
.end method

.method public onDrawFrame()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 108
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimate:Z

    if-nez v6, :cond_0

    .line 194
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 114
    .local v1, "currentTime":J
    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationStartTime:J

    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationDurationTime:J

    add-long/2addr v6, v8

    cmp-long v6, v1, v6

    if-ltz v6, :cond_a

    .line 115
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTargetEvent:I

    if-ne v6, v12, :cond_4

    .line 117
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 118
    .local v4, "right":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 119
    .local v0, "curl":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v12}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 120
    invoke-virtual {v4, v11}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 121
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 122
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v0}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 123
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 124
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 126
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-eq v6, v10, :cond_1

    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllow2PagesLandscape:Z

    if-nez v6, :cond_3

    .line 127
    :cond_1
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v6, v10, :cond_2

    .line 128
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    .line 182
    .end local v0    # "curl":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    .end local v4    # "right":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    :cond_2
    :goto_1
    iput v11, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    .line 183
    iput-boolean v11, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimate:Z

    .line 184
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->requestRender()V

    goto :goto_0

    .line 131
    .restart local v0    # "curl":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    .restart local v4    # "right":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    :cond_3
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v6, v10, :cond_2

    .line 132
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v6, v6, -0x2

    iput v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    .line 133
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->swapSheet()V

    goto :goto_1

    .line 144
    .end local v0    # "curl":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    .end local v4    # "right":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    :cond_4
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTargetEvent:I

    if-ne v6, v10, :cond_2

    .line 146
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 147
    .local v3, "left":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 148
    .restart local v0    # "curl":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v10}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setRect(Landroid/graphics/RectF;)V

    .line 149
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-eq v6, v10, :cond_5

    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllow2PagesLandscape:Z

    if-nez v6, :cond_8

    .line 150
    :cond_5
    invoke-virtual {v3, v10}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 154
    :goto_2
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->reset()V

    .line 155
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v0}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 156
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderLeftPage:Z

    if-nez v6, :cond_6

    .line 157
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v6, v3}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 159
    :cond_6
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 160
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .line 162
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-eq v6, v10, :cond_7

    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllow2PagesLandscape:Z

    if-nez v6, :cond_9

    .line 163
    :cond_7
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v6, v12, :cond_2

    .line 164
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    goto :goto_1

    .line 152
    :cond_8
    invoke-virtual {v3, v11}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    goto :goto_2

    .line 168
    :cond_9
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v6, v12, :cond_2

    .line 169
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    .line 170
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->swapSheet()V

    goto :goto_1

    .line 186
    .end local v0    # "curl":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    .end local v3    # "left":Lcom/google/appinventor/components/runtime/util/CurlMesh;
    :cond_a
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationSource:Landroid/graphics/PointF;

    invoke-virtual {v6, v7}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 187
    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationStartTime:J

    sub-long v6, v1, v6

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationDurationTime:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 190
    .local v5, "t":F
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTarget:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationSource:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 191
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTarget:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationSource:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    .line 192
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    invoke-direct {p0, v6}, Lcom/google/appinventor/components/runtime/util/CurlView;->updateCurlPos(Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;)V

    goto/16 :goto_0
.end method

.method public onPageSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapWidth:I

    .line 199
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageBitmapHeight:I

    .line 200
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->updateBitmaps()V

    .line 201
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->requestRender()V

    .line 202
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V

    .line 207
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->requestRender()V

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mSizeChangedObserver:Lcom/google/appinventor/components/runtime/util/CurlView$SizeChangedObserver;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mSizeChangedObserver:Lcom/google/appinventor/components/runtime/util/CurlView$SizeChangedObserver;

    invoke-interface {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/CurlView$SizeChangedObserver;->onSizeChanged(II)V

    .line 211
    :cond_0
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->resetTexture()V

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageRight:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->resetTexture()V

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageCurl:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->resetTexture()V

    .line 221
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x2

    .line 227
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimate:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    if-nez v5, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v3

    .line 232
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v5, v8}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v2

    .line 233
    .local v2, "rightRect":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v5, v4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v1

    .line 236
    .local v1, "leftRect":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 237
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->translate(Landroid/graphics/PointF;)V

    .line 238
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mEnableTouchPressure:Z

    if-eqz v5, :cond_3

    .line 239
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    iput v6, v5, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPressure:F

    .line 244
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_2
    move v3, v4

    .line 350
    goto :goto_0

    .line 241
    :cond_3
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    const v6, 0x3f4ccccd    # 0.8f

    iput v6, v5, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPressure:F

    goto :goto_1

    .line 250
    :pswitch_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v5, v6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 255
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 256
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 263
    :cond_4
    :goto_3
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-ne v5, v8, :cond_9

    .line 268
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    if-lez v5, :cond_7

    .line 269
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v6, v1, Landroid/graphics/RectF;->left:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 270
    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/util/CurlView;->startCurl(I)V

    .line 302
    :cond_5
    :goto_4
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-eqz v5, :cond_0

    .line 307
    :pswitch_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/util/CurlView;->updateCurlPos(Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;)V

    goto :goto_2

    .line 257
    :cond_6
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 258
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    iput v6, v5, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 273
    :cond_7
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 275
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 276
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllowLastPageCurl:Z

    if-nez v5, :cond_8

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 281
    :cond_8
    invoke-direct {p0, v8}, Lcom/google/appinventor/components/runtime/util/CurlView;->startCurl(I)V

    goto :goto_4

    .line 283
    :cond_9
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-ne v5, v4, :cond_5

    .line 284
    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    div-float v0, v5, v9

    .line 285
    .local v0, "halfX":F
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_a

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    if-lez v5, :cond_a

    .line 286
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/RectF;->left:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 287
    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/util/CurlView;->startCurl(I)V

    goto :goto_4

    .line 288
    :cond_a
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v5, v0

    if-ltz v5, :cond_5

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 290
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 291
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllowLastPageCurl:Z

    if-nez v5, :cond_b

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 296
    :cond_b
    invoke-direct {p0, v8}, Lcom/google/appinventor/components/runtime/util/CurlView;->startCurl(I)V

    goto/16 :goto_4

    .line 312
    .end local v0    # "halfX":F
    :pswitch_2
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-eq v3, v4, :cond_c

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-ne v3, v8, :cond_2

    .line 320
    :cond_c
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationSource:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v3, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationStartTime:J

    .line 325
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v6

    div-float/2addr v5, v9

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_e

    :cond_d
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-ne v3, v8, :cond_f

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPointerPos:Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_f

    .line 329
    :cond_e
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTarget:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    invoke-virtual {v3, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 330
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTarget:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v5, v8}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 332
    iput v8, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTargetEvent:I

    .line 343
    :goto_5
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimate:Z

    .line 344
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->requestRender()V

    goto/16 :goto_2

    .line 335
    :cond_f
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTarget:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mDragStartPos:Landroid/graphics/PointF;

    invoke-virtual {v3, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 336
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurlState:I

    if-eq v3, v8, :cond_10

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    if-ne v3, v8, :cond_11

    .line 337
    :cond_10
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTarget:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 341
    :goto_6
    iput v4, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTargetEvent:I

    goto :goto_5

    .line 339
    :cond_11
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAnimationTarget:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iput v5, v3, Landroid/graphics/PointF;->x:F

    goto :goto_6

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public set2PagesLandscape(Z)V
    .locals 0
    .param p1, "Allow2PagesLandscape"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllow2PagesLandscape:Z

    .line 461
    return-void
.end method

.method public setAllowLastPageCurl(Z)V
    .locals 0
    .param p1, "allowLastPageCurl"    # Z

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllowLastPageCurl:Z

    .line 358
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->setBackgroundColor(I)V

    .line 368
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->requestRender()V

    .line 369
    return-void
.end method

.method public setBitmapProvider(Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;)V
    .locals 1
    .param p1, "bitmapProvider"    # Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    .line 377
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->updateBitmaps()V

    .line 378
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->requestRender()V

    .line 379
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    if-eqz v0, :cond_0

    if-gtz p1, :cond_1

    .line 387
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    .line 392
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->updateBitmaps()V

    .line 393
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CurlView;->requestRender()V

    .line 394
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mBitmapProvider:Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/CurlView$BitmapProvider;->getBitmapCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mCurrentIndex:I

    goto :goto_0
.end method

.method public setEnableTouchPressure(Z)V
    .locals 0
    .param p1, "enableTouchPressure"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mEnableTouchPressure:Z

    .line 405
    return-void
.end method

.method public setMargins(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->setMargins(FFFF)V

    .line 413
    return-void
.end method

.method public setRenderLeftPage(Z)V
    .locals 0
    .param p1, "renderLeftPage"    # Z

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderLeftPage:Z

    .line 422
    return-void
.end method

.method public setSizeChangedObserver(Lcom/google/appinventor/components/runtime/util/CurlView$SizeChangedObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/google/appinventor/components/runtime/util/CurlView$SizeChangedObserver;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mSizeChangedObserver:Lcom/google/appinventor/components/runtime/util/CurlView$SizeChangedObserver;

    .line 430
    return-void
.end method

.method public setViewMode(I)V
    .locals 3
    .param p1, "viewMode"    # I

    .prologue
    const/4 v2, 0x1

    .line 438
    packed-switch p1, :pswitch_data_0

    .line 454
    :goto_0
    return-void

    .line 440
    :pswitch_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    .line 441
    const-wide v0, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setALPHA(D)V

    .line 442
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->setViewMode(I)V

    goto :goto_0

    .line 446
    :pswitch_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mViewMode:I

    .line 447
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mAllow2PagesLandscape:Z

    if-eqz v0, :cond_0

    .line 448
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setALPHA(D)V

    .line 449
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mPageLeft:Lcom/google/appinventor/components/runtime/util/CurlMesh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setFlipTexture(Z)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlView;->mRenderer:Lcom/google/appinventor/components/runtime/util/CurlRenderer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->setViewMode(I)V

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
