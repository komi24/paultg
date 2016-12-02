.class public Lcom/google/appinventor/components/runtime/util/CurlRenderer;
.super Ljava/lang/Object;
.source "CurlRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;
    }
.end annotation


# static fields
.field public static final PAGE_LEFT:I = 0x1

.field public static final PAGE_RIGHT:I = 0x2

.field public static final SHOW_ONE_PAGE:I = 0x1

.field public static final SHOW_TWO_PAGES:I = 0x2

.field private static final USE_PERSPECTIVE_PROJECTION:Z


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundColorChanged:Z

.field private mCurlMeshes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh;",
            ">;"
        }
    .end annotation
.end field

.field private mMargins:Landroid/graphics/RectF;

.field private mObserver:Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;

.field private mPageRectLeft:Landroid/graphics/RectF;

.field private mPageRectRight:Landroid/graphics/RectF;

.field private mViewMode:I

.field private mViewRect:Landroid/graphics/RectF;

.field private mViewportHeight:I

.field private mViewportWidth:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewMode:I

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mBackgroundColorChanged:Z

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mObserver:Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mCurlMeshes:Ljava/util/Vector;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    .line 60
    return-void
.end method

.method private updatePageRects()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 203
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 206
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 207
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 208
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 209
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 210
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 212
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 213
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, v3, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 215
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewportWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 217
    .local v1, "bitmapW":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewportHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 219
    .local v0, "bitmapH":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mObserver:Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;

    invoke-interface {v2, v1, v0}, Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;->onPageSizeChanged(II)V

    goto/16 :goto_0

    .line 220
    .end local v0    # "bitmapH":I
    .end local v1    # "bitmapW":I
    :cond_2
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 221
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 222
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 223
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 224
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 225
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 227
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 228
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 229
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 231
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewportWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 233
    .restart local v1    # "bitmapW":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewportHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 235
    .restart local v0    # "bitmapH":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mObserver:Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;

    invoke-interface {v2, v1, v0}, Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;->onPageSizeChanged(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized addCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V
    .locals 1
    .param p1, "mesh"    # Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mCurlMeshes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPageRect(I)Landroid/graphics/RectF;
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 75
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectLeft:Landroid/graphics/RectF;

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mPageRectRight:Landroid/graphics/RectF;

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mObserver:Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;->onDrawFrame()V

    .line 88
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mBackgroundColorChanged:Z

    if-eqz v1, :cond_0

    .line 89
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mBackgroundColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mBackgroundColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mBackgroundColorChanged:Z

    .line 96
    :cond_0
    const/16 v1, 0x4000

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 97
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mCurlMeshes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mCurlMeshes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->draw(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    monitor-exit p0

    return-void

    .line 86
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-interface {p1, v1, v1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 111
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewportWidth:I

    .line 112
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewportHeight:I

    .line 114
    int-to-float v1, p2

    int-to-float v2, p3

    div-float v0, v1, v2

    .line 115
    .local v0, "ratio":F
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 116
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 117
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    neg-float v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 118
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 119
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->updatePageRects()V

    .line 121
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 122
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 126
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {p1, v1, v2, v3, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 130
    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 131
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 132
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/16 v2, 0x1102

    const/4 v1, 0x0

    .line 136
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 137
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 138
    const/16 v0, 0xc50

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 139
    const/16 v0, 0xc52

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 140
    const/16 v0, 0xc53

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 141
    const/16 v0, 0xb20

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 142
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 143
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mObserver:Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/CurlRenderer$Observer;->onSurfaceCreated()V

    .line 146
    return-void
.end method

.method public declared-synchronized removeCurlMesh(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V
    .locals 1
    .param p1, "mesh"    # Lcom/google/appinventor/components/runtime/util/CurlMesh;

    .prologue
    .line 152
    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mCurlMeshes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 154
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mBackgroundColor:I

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mBackgroundColorChanged:Z

    .line 162
    return-void
.end method

.method public declared-synchronized setMargins(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mMargins:Landroid/graphics/RectF;

    iput p4, v0, Landroid/graphics/RectF;->bottom:F

    .line 174
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->updatePageRects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setViewMode(I)V
    .locals 1
    .param p1, "viewmode"    # I

    .prologue
    .line 182
    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 183
    :try_start_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewMode:I

    .line 184
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->updatePageRects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 186
    :try_start_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewMode:I

    .line 187
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->updatePageRects()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public translate(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "pt"    # Landroid/graphics/PointF;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewportWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    neg-float v1, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlRenderer;->mViewportHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 197
    return-void
.end method
