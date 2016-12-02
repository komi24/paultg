.class public Lcom/google/appinventor/components/runtime/Toggler;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Toggler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Toggler Displays checked/unchecked states as a button with a \'light\' indicator and by default accompanied with the text \'ON\' or \'OFF\'. "
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Toggler"


# instance fields
.field private DEFAULT_TEXT_OFF:Ljava/lang/String;

.field private DEFAULT_TEXT_ON:Ljava/lang/String;

.field private view:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 33
    const-string/jumbo v0, "On"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->DEFAULT_TEXT_ON:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "Off"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->DEFAULT_TEXT_OFF:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/widget/ToggleButton;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->DEFAULT_TEXT_ON:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Toggler;->TextOn(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->DEFAULT_TEXT_OFF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Toggler;->TextOff(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Toggler;->Enabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 66
    return-void
.end method


# virtual methods
.method public Checked(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 155
    return-void
.end method

.method public Checked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 162
    const-string/jumbo v0, "Click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    return-void
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
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 133
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public TextOff()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TextOff(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Off"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->invalidate()V

    .line 111
    return-void
.end method

.method public TextOn()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TextOn(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "On"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->invalidate()V

    .line 91
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "enabled"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Toggler;->view:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Toggler;->Click()V

    .line 169
    return-void
.end method
