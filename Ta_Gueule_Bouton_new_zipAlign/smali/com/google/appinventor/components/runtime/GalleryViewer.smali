.class public Lcom/google/appinventor/components/runtime/GalleryViewer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "GalleryViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that shows items in a center-locked, horizontally scrolling list"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private adapter:Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

.field private imagePad:I

.field private images:Lcom/google/appinventor/components/runtime/util/YailList;

.field private selectedImageIndex:J

.field private view:Landroid/widget/Gallery;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 27
    const-string/jumbo v0, "GalleryViewer"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->imagePad:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->selectedImageIndex:J

    .line 39
    new-instance v0, Landroid/widget/Gallery;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    iget v1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->imagePad:I

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 41
    new-instance v0, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;-><init>(Lcom/google/appinventor/components/runtime/GalleryViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->adapter:Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 45
    return-void
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/GalleryViewer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GalleryViewer;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public AfterPicking(Ljava/lang/String;)V
    .locals 3
    .param p1, "imageName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 177
    const-string/jumbo v0, "AfterPicking"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public Images()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->images:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Images(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "images"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->images:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->adapter:Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->setImages([Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->adapter:Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->requestLayout()V

    .line 59
    return-void
.end method

.method public Padding()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->imagePad:I

    return v0
.end method

.method public Padding(I)V
    .locals 1
    .param p1, "spaces"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 70
    iput p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->imagePad:I

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    invoke-virtual {v0, p1}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 72
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->images:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->selectedImageIndex:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GalleryViewer;->Images()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 131
    .local v1, "images":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 132
    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    invoke-virtual {v2, v0}, Landroid/widget/Gallery;->setSelection(I)V

    .line 134
    int-to-long v2, v0

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->selectedImageIndex:J

    .line 139
    :cond_0
    return-void

    .line 131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ThumbnailHeight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->adapter:Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    # invokes: Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->getHeight()I
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->access$300(Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;)I

    move-result v0

    return v0
.end method

.method public ThumbnailHeight(I)V
    .locals 2
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->adapter:Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    # invokes: Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->setHeight(I)V
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->access$200(Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;I)V

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->adapter:Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->requestLayout()V

    .line 119
    return-void
.end method

.method public ThumbnailWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->adapter:Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    # invokes: Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->getWidth()I
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->access$100(Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;)I

    move-result v0

    return v0
.end method

.method public ThumbnailWidth(I)V
    .locals 2
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->adapter:Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    # invokes: Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->setWidth(I)V
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;->access$000(Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;I)V

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->adapter:Lcom/google/appinventor/components/runtime/GalleryViewer$GalleryImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->requestLayout()V

    .line 107
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->view:Landroid/widget/Gallery;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->selectedImageIndex:J

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->images:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/GalleryViewer;->AfterPicking(Ljava/lang/String;)V

    .line 170
    return-void
.end method
