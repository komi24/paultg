.class public Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "AdAmazonInterstitial.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "An interstitial ad is a full-page ad. AdAmazonInterstitial component allows you to monetize your app. You must have a valid Amazon Application Key. If your application key is invalid, the ad will not display on the emulator or the device. Warning: Make sure you\'re in test mode during development to avoid being disabled for clicking your own ads. "
    iconName = "images/adamazoninterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "amazon-ads-5.4.78.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_NETWORK_STATE,android.permission.ACCESS_WIFI_STATE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdAmazonInterstitial"


# instance fields
.field private appKey:Ljava/lang/String;

.field private enableDebug:Z

.field private enableTesting:Z

.field private geoLocationEnabled:Z

.field private interstitialAd:Lcom/amazon/device/ads/InterstitialAd;

.field private isAdLoaded:Z

.field private targetAge:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->appKey:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->enableDebug:Z

    .line 40
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->enableTesting:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->isAdLoaded:Z

    .line 59
    new-instance v0, Lcom/amazon/device/ads/InterstitialAd;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->interstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->interstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    new-instance v1, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;-><init>(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->isAdLoaded:Z

    return p1
.end method


# virtual methods
.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when the close button of the interstitial ad is clicked. It\'s important to remember only one interstitial ad can be shown at a time. The previous ad has to be dismissed before a new ad can be shown."
    .end annotation

    .prologue
    .line 92
    const-string/jumbo v0, "AdClosed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public AdCollapsed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "After a user clicks on the close ad button on an expanded ad, this callback is called immediately after collapsing the ad. This callback can be used to do things like resume your app or restart audio."
    .end annotation

    .prologue
    .line 68
    const-string/jumbo v0, "AdCollapsed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public AdExpanded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This callback is called each time an ad is successfully loaded. You can use this to log metrics on ad views and assist with initial integration. Detailed information about the ad that loaded can be obtained from the AdProperties object."
    .end annotation

    .prologue
    .line 73
    const-string/jumbo v0, "AdExpanded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Whenever an ad fails to be retrieved, the event is called, returning the error message."
    .end annotation

    .prologue
    .line 80
    const-string/jumbo v0, "AdFailedToLoad"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public AdFailedToShow(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an an attempt was made to display the ad, but the ad was not ready to display"
    .end annotation

    .prologue
    .line 85
    const-string/jumbo v0, "AdFailedToShow"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered each time an ad is successfully loaded. But you don\'t have to display the ad right after it\'s loaded. For example, set a flag to true and then at a transition point, if flag=true, then display the ad."
    .end annotation

    .prologue
    .line 98
    const-string/jumbo v0, "AdLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public ApplicationKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public ApplicationKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ApplicationKey"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enter Application Key. Go to Amazon Developer Portal and sign-in for your ApplicationKey"
        userVisible = false
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->appKey:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public EnableDebug(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->enableDebug:Z

    .line 128
    return-void
.end method

.method public EnableDebug()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->enableDebug:Z

    return v0
.end method

.method public EnableGeoLocationTargeting(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, uses latitude and longitude coordinates as part of an ad request"
        userVisible = true
    .end annotation

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->geoLocationEnabled:Z

    .line 150
    return-void
.end method

.method public EnableGeoLocationTargeting()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->geoLocationEnabled:Z

    return v0
.end method

.method public EnableTesting(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "For debugging / development purposes flag all ad requests as tests, but set to false for production builds"
        userVisible = true
    .end annotation

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->enableTesting:Z

    .line 139
    return-void
.end method

.method public EnableTesting()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->enableTesting:Z

    return v0
.end method

.method public LoadAd()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad"
    .end annotation

    .prologue
    .line 182
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->isAdLoaded:Z

    if-eqz v2, :cond_0

    .line 211
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->enableTesting:Z

    invoke-static {v2}, Lcom/amazon/device/ads/AdRegistration;->enableTesting(Z)V

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->appKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 191
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->geoLocationEnabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->targetAge:I

    if-lez v2, :cond_4

    .line 192
    :cond_1
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 194
    .local v0, "localAdTargetingOptions":Lcom/amazon/device/ads/AdTargetingOptions;
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->geoLocationEnabled:Z

    if-eqz v2, :cond_2

    .line 195
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->geoLocationEnabled:Z

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoLocation(Z)Lcom/amazon/device/ads/AdTargetingOptions;

    .line 198
    :cond_2
    iget v2, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->targetAge:I

    if-lez v2, :cond_3

    .line 199
    iget v2, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->targetAge:I

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/AdTargetingOptions;->setAge(I)Lcom/amazon/device/ads/AdTargetingOptions;

    .line 202
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->interstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v0    # "localAdTargetingOptions":Lcom/amazon/device/ads/AdTargetingOptions;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "localException":Ljava/lang/Exception;
    const-string/jumbo v2, "AdAmazonInterstitial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception thrown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v1    # "localException":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->interstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/amazon/device/ads/InterstitialAd;->loadAd()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public ShowInterstitialAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It will show the Interstitial Ad"
    .end annotation

    .prologue
    .line 215
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->isAdLoaded:Z

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->isAdLoaded:Z

    .line 217
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->interstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/amazon/device/ads/InterstitialAd;->showAd()Z

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    const-string/jumbo v0, "Interstitial ad was not ready to be shown. Make sure you have set ad AppKey and you invoke this after LoadAd"

    .line 220
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "AdAmazonInterstitial"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdFailedToShow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TargetAge()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 170
    iget v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->targetAge:I

    return v0
.end method

.method public TargetAge(I)V
    .locals 0
    .param p1, "paramInt"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "You can pass age information to the Amazon Mobile Ad Network to target specific age groups. If set as 0, Age Targetting will not be used"
    .end annotation

    .prologue
    .line 176
    iput p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->targetAge:I

    .line 177
    return-void
.end method
