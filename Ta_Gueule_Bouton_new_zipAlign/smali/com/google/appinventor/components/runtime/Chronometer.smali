.class public Lcom/google/appinventor/components/runtime/Chronometer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Chronometer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A Chronometer is a simple timer that can be started or stopped</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Chronometer"


# instance fields
.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private bold:Z

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private fontTypeface:I

.field private hasStarted:Z

.field private imagePath:Ljava/lang/String;

.field private italic:Z

.field private lastPause:J

.field private shouldResume:Z

.field private shouldStart:Z

.field private textColor:I

.field private time:J

.field protected view:Landroid/widget/Chronometer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 31
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Chronometer;->hasStarted:Z

    .line 34
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Chronometer;->lastPause:J

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->imagePath:Ljava/lang/String;

    .line 44
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Chronometer;->time:J

    .line 50
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Chronometer;->shouldResume:Z

    .line 51
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Chronometer;->shouldStart:Z

    .line 72
    new-instance v0, Landroid/widget/Chronometer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-virtual {v0, p0}, Landroid/widget/Chronometer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-virtual {v0, p0}, Landroid/widget/Chronometer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-virtual {v0, p0}, Landroid/widget/Chronometer;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 87
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chronometer;->BackgroundColor(I)V

    .line 88
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chronometer;->TextColor(I)V

    .line 89
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chronometer;->FontSize(F)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Chronometer;->Started(Z)V

    .line 92
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chronometer;->Image(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private updateAppearance()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 216
    iget v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->backgroundColor:I

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 230
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s background color"
    .end annotation

    .prologue
    .line 188
    iget v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the button\'s background color. The background color will not be visible if an Image is being displayed."
    .end annotation

    .prologue
    .line 205
    iput p1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->backgroundColor:I

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setBackgroundColor(I)V

    .line 207
    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->hasStarted:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chronometer;->Stop()V

    .line 284
    :goto_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->hasStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->hasStarted:Z

    .line 285
    const-string/jumbo v0, "Click"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 286
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chronometer;->Started()Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 284
    goto :goto_1
.end method

.method public ElapsedTimeInSec()J
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-virtual {v3}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 447
    .local v0, "elapsedTime":I
    int-to-long v1, v0

    return-wide v1
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 346
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the user can enter text into this input box.  By default, this is true."
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 3
    .param p1, "bold"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->bold:Z

    .line 371
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Chronometer;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 372
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 3
    .param p1, "italic"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->italic:Z

    .line 397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Chronometer;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 398
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 316
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 108
    const-string/jumbo v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the button\'s image.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 175
    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 154
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->imagePath:Ljava/lang/String;

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Chronometer;->imagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Chronometer;->updateAppearance()V

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v1, "Chronometer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Chronometer;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public LongClick()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chronometer;->Stop()V

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 298
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->lastPause:J

    .line 299
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Chronometer;->hasStarted:Z

    .line 300
    const-string/jumbo v0, "ClockReset"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 117
    const-string/jumbo v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public ShouldResume(Z)V
    .locals 4
    .param p1, "value"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->shouldResume:Z

    .line 438
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->time:J

    .line 441
    :cond_0
    return-void
.end method

.method public ShouldResume()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->shouldResume:Z

    return v0
.end method

.method public Started(Z)V
    .locals 5
    .param p1, "shouldStart"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->shouldStart:Z

    .line 462
    if-eqz p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Chronometer;->time:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 464
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chronometer;->Stop()V

    goto :goto_0
.end method

.method public Started()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->shouldStart:Z

    return v0
.end method

.method public Stop()V
    .locals 4

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->shouldResume:Z

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->time:J

    .line 488
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 490
    return-void

    .line 486
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->time:J

    goto :goto_0
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 408
    iget v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 421
    iput p1, p0, Lcom/google/appinventor/components/runtime/Chronometer;->textColor:I

    .line 422
    if-eqz p1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public click()V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chronometer;->Click()V

    .line 234
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chronometer;->view:Landroid/widget/Chronometer;

    return-object v0
.end method

.method public longClick()Z
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chronometer;->LongClick()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chronometer;->click()V

    .line 246
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "previouslyFocused"    # Landroid/view/View;
    .param p2, "gainFocus"    # Z

    .prologue
    .line 253
    if-eqz p2, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chronometer;->GotFocus()V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chronometer;->LostFocus()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chronometer;->longClick()Z

    move-result v0

    return v0
.end method
