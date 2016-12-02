.class public Lcom/google/appinventor/components/runtime/VSVArrangement;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "VSVArrangement.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A formatting element in which to place components that should be displayed from top to buttom. The components can be scrolled vertically, allowing it to be larger than the physical display.   If you wish to have components displayed horizontally, use <code>HSVArrangement</code> instead.</p>"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final context:Landroid/app/Activity;

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private horizontalAlignment:I

.field private imagePath:Ljava/lang/String;

.field private final orientation:I

.field private scrollView:Landroid/widget/ScrollView;

.field private scrollbarEnabled:Z

.field private verticalAlignment:I

.field private final viewLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/VSVArrangement;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "orientation"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 74
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 55
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->imagePath:Ljava/lang/String;

    .line 75
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->context:Landroid/app/Activity;

    .line 77
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 82
    .local v0, "layoutParms":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->scrollView:Landroid/widget/ScrollView;

    .line 83
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iput p2, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->orientation:I

    .line 87
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->viewLayout:Landroid/widget/LinearLayout;

    .line 88
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 90
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->scrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 92
    iput v3, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->horizontalAlignment:I

    .line 93
    iput v3, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->verticalAlignment:I

    .line 96
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VSVArrangement;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 100
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/VSVArrangement;->BackgroundColor(I)V

    .line 101
    return-void
.end method

.method private updateAppearance()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 266
    iget v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->backgroundColor:I

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VSVArrangement;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 279
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VSVArrangement;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 273
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VSVArrangement;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VSVArrangement;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "position"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public $getComponentPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public $remove(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 291
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the component\'s background color"
    .end annotation

    .prologue
    .line 191
    iget v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the component\'s background color. The background color will not be visible if an Image is being displayed."
    .end annotation

    .prologue
    .line 207
    iput p1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->backgroundColor:I

    .line 208
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VSVArrangement;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 209
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VSVArrangement;->updateAppearance()V

    .line 211
    return-void
.end method

.method public EnableScrolbar(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->scrollbarEnabled:Z

    .line 306
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VSVArrangement;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 307
    return-void
.end method

.method public EnableScrolbar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->scrollbarEnabled:Z

    return v0
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the component\'s image.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 258
    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 242
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->imagePath:Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VSVArrangement;->updateAppearance()V

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .prologue
    .line 132
    iget v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->orientation:I

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForHorizontalLayout(Landroid/view/View;I)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .prologue
    .line 123
    iget v0, p0, Lcom/google/appinventor/components/runtime/VSVArrangement;->orientation:I

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForHorizontalLayout(Landroid/view/View;I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    goto :goto_0
.end method
