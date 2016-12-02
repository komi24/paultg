.class public Lcom/google/appinventor/components/runtime/AdAmazon;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "AdAmazon.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/amazon/device/ads/AdListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "AdAmazon component allows you to monetize your app. You must have a valid publisher id that can be obtained from https://developer.amazon.com. If your publisher id is invalid, the AdAmazon banner will not display on the emulator or the device."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "amazon-ads-5.4.78.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE,android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_WIFI_STATE"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private adView:Lcom/amazon/device/ads/AdLayout;

.field private debugEnabled:Z

.field private publisherId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->debugEnabled:Z

    .line 23
    const-string/jumbo v0, "AdAmazon"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "AmazonPublisherId"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->publisherId:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/amazon/device/ads/AdLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/AdSize;->SIZE_320x50:Lcom/amazon/device/ads/AdSize;

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->publisherId:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdAmazon;->RefreshAd(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public AdDismissed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 174
    const-string/jumbo v0, "AdDismissed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public AdExpanded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 180
    const-string/jumbo v0, "AdExpanded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 186
    const-string/jumbo v0, "AdFailedToLoad"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 192
    const-string/jumbo v0, "AdLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public DebugEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->debugEnabled:Z

    .line 103
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->enableLogging(Z)V

    .line 105
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->enableTesting(Z)V

    .line 106
    return-void
.end method

.method public DebugEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->debugEnabled:Z

    return v0
.end method

.method public PublisherId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public PublisherId(Ljava/lang/String;)V
    .locals 1
    .param p1, "publisherId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AmazonPublisherId"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Amazon Ad Publisher Id and refreshes the ad"
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->publisherId:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdAmazon;->RefreshAd(Z)V

    .line 63
    return-void
.end method

.method public RefreshAd(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Refreshes the ad"
    .end annotation

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 75
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 76
    .local v0, "adOptions":Lcom/amazon/device/ads/AdTargetingOptions;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 78
    .end local v0    # "adOptions":Lcom/amazon/device/ads/AdTargetingOptions;
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    return-object v0
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "paramAd"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Ad collapsed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdDismissed()V

    .line 136
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Ad Dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdDismissed()V

    .line 142
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "paramAd"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Ad expanded."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdExpanded()V

    .line 151
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 3
    .param p1, "paramAd"    # Lcom/amazon/device/ads/Ad;
    .param p2, "paramAdError"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 158
    const-string/jumbo v0, "AmazonInterstitialAds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ad failed to load. Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 3
    .param p1, "paramAd"    # Lcom/amazon/device/ads/Ad;
    .param p2, "paramAdProperties"    # Lcom/amazon/device/ads/AdProperties;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdProperties;->getAdType()Lcom/amazon/device/ads/AdProperties$AdType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdProperties$AdType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ad loaded successfully."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdLoaded()V

    .line 169
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->adView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    .line 127
    :cond_0
    return-void
.end method
