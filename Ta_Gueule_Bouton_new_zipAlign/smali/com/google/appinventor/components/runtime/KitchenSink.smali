.class public Lcom/google/appinventor/components/runtime/KitchenSink;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "KitchenSink.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVANCED:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that is used for updating default values in the androidmanifest.xml. The androidmanifest.xml contains all the details needed by the android system about the app. "
    iconName = "images/kitchensink.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KitchenSink"


# instance fields
.field private final context:Landroid/content/Context;

.field private deviceKey:Ljava/lang/String;

.field private notificationBarVisible:Z

.field private screenOnEnabled:Z

.field private titleBarVisible:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 35
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->notificationBarVisible:Z

    .line 36
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->titleBarVisible:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->screenOnEnabled:Z

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->context:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public DeviceInfo()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieves device information as key=value pairs delimited by comma. If DeviceInfoKey was set previously, then it will only return data for that key"
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v1, "MODEL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v1, ",MANUFACTURER="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v1, ",DEVICE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v1, ",PRODUCT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v1, ",BRAND="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v1, ",HARDWARE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, ",API="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v1, ",ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v1, ",DISPLAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v1, ",FINGERPRINT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    :goto_0
    return-object v1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    const-string/jumbo v2, "MODEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    const-string/jumbo v2, "MANUFACTURER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    const-string/jumbo v2, "DEVICE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    const-string/jumbo v2, "PRODUCT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    const-string/jumbo v2, "BRAND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_5
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    const-string/jumbo v2, "HARDWARE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_6
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    const-string/jumbo v2, "API"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_7
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    const-string/jumbo v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_8
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    const-string/jumbo v2, "DISPLAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_9
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    const-string/jumbo v2, "FINGERPRINT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    :cond_a
    const-string/jumbo v1, "INVALID KEY"

    goto/16 :goto_0
.end method

.method public DeviceInfoKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceKey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the deviceKey to be retrieved when getting DeviceInfo. Leave blank return all available data. Otherwise, specify one of these keys: MODEL, MANUFACTURER, DEVICE, PRODUCT, BRAND, HARDWARE, API, ID, DISPLAY, FINGERPRINT"
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->deviceKey:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public HideSoftKeyboard(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 155
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 157
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 159
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method public IsGPSEnabled()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Checks to see if device is GPS enabled and if so, checks to see if GPS is started or not"
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KitchenSink;->IsGPSEnabledDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 194
    :goto_0
    return v1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 194
    .local v0, "manager":Landroid/location/LocationManager;
    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public IsGPSEnabledDevice()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Checks to see if device is GPS enabled"
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v4, "location"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 179
    .local v0, "mgr":Landroid/location/LocationManager;
    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v2

    .line 180
    :cond_1
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const-string/jumbo v3, "gps"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public IsNetworkAvailable()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Checks to see if network is available or not; i.e. is device connected to network"
    .end annotation

    .prologue
    .line 168
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 170
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 172
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public KeepScreenOn(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/16 v1, 0x80

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 141
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->screenOnEnabled:Z

    .line 142
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public KeepScreenOn()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->screenOnEnabled:Z

    return v0
.end method

.method public NotificationBarVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/16 v2, 0x800

    const/16 v1, 0x400

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 62
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->notificationBarVisible:Z

    .line 63
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public NotificationBarVisible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->notificationBarVisible:Z

    return v0
.end method

.method public StartGPSOptions()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Starts up the GPS configuration activity, giving user option to turn turn on the GPS"
    .end annotation

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KitchenSink;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    .line 220
    const/4 v1, 0x1

    return v1
.end method
