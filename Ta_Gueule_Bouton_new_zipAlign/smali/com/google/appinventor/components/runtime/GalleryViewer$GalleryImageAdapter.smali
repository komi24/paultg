.class Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/GalleryViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryImageAdapter"
.end annotation


# instance fields
.field private height:I

.field private imageBackground:I

.field private images:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GalleryViewer;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GalleryViewer;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->this$0:Lcom/google/appinventor/components/runtime/GalleryViewer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->images:[Ljava/lang/String;

    .line 195
    const/16 v0, 0x96

    iput v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->width:I

    .line 196
    const/16 v0, 0x78

    iput v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->height:I

    .line 200
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->mContext:Landroid/content/Context;

    .line 202
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/GalleryViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "ImageGallery_android_galleryItemBackground"

    const-string/jumbo v2, "styleable"

    iget-object v3, p1, Lcom/google/appinventor/components/runtime/GalleryViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->imageBackground:I

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->setWidth(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->getWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->setHeight(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->getHeight()I

    move-result v0

    return v0
.end method

.method private getHeight()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->height:I

    return v0
.end method

.method private getWidth()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->width:I

    return v0
.end method

.method private setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->height:I

    .line 221
    return-void
.end method

.method private setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->width:I

    .line 214
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->images:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getImages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->images:[Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 236
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 248
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, "iv":Landroid/widget/ImageView;
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->this$0:Lcom/google/appinventor/components/runtime/GalleryViewer;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GalleryViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->images:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    iget v3, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->width:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 254
    iget v2, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->imageBackground:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->this$0:Lcom/google/appinventor/components/runtime/GalleryViewer;

    # getter for: Lcom/google/appinventor/components/runtime/GalleryViewer;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/GalleryViewer;->access$400(Lcom/google/appinventor/components/runtime/GalleryViewer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setImages([Ljava/lang/String;)V
    .locals 0
    .param p1, "images"    # [Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->images:[Ljava/lang/String;

    .line 241
    return-void
.end method
