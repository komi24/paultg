.class public Lcom/google/appinventor/components/runtime/MobFoxInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "MobFoxInterstitial.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "An interstitial ad is a full-page ad. MobFoxInterstitial component allows you to monetize your app. You must have a valid MobFox account and PublisherId that can be obtained from http://account.mobfox.com . If your id is invalid, the MobFoxInterstitial will not display on the emulator or the device. Warning: Make sure you\'re in test mode during development to avoid being disabled for clicking your own ads.  You can request activation from your MobFox account."
    iconName = "images/mobfoxinterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "AdSdk_6.0.0.jar,simple-xml-2.7.1.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_NETWORK_STATE,android.permission.ACCESS_WIFI_STATE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MobFoxInterstitial$AdListenerPage;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MobFoxInterstitial"


# instance fields
.field protected container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private mManager:Lcom/adsdk/sdk/AdManager;

.field public publisherId:Ljava/lang/String;

.field public targetAge:I

.field private targetGender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->targetAge:I

    .line 31
    const-string/jumbo v0, "ALL"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->targetGender:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 39
    return-void
.end method


# virtual methods
.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user is about to return to the application after ad is closed"
    .end annotation

    .prologue
    .line 64
    const-string/jumbo v0, "AdClosed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public AdExpanded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This callback is called when user has clicked on the ad"
    .end annotation

    .prologue
    .line 69
    const-string/jumbo v0, "AdExpanded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "adFailedToLoadCode"    # Ljava/lang/String;
    .param p2, "adFailedToLoadMessage"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 135
    const-string/jumbo v0, "AdFailedToLoad"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public AdFailedToShow(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an an attempt was made to display the ad, but the ad was not ready to display"
    .end annotation

    .prologue
    .line 59
    const-string/jumbo v0, "AdFailedToShow"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 140
    const-string/jumbo v0, "AdLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public LoadAd()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 43
    new-instance v0, Lcom/adsdk/sdk/AdManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "http://my.mobfox.com/request.php"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->publisherId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adsdk/sdk/AdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/AdManager;->setInterstitialAdsEnabled(Z)V

    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/AdManager;->setVideoAdsEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/AdManager;->setPrioritizeVideoAds(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->TargetAge()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->TargetAge()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdManager;->setUserAge(I)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->targetGender:Ljava/lang/String;

    const-string/jumbo v1, "male"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    sget-object v1, Lcom/adsdk/sdk/Gender;->MALE:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdManager;->setUserGender(Lcom/adsdk/sdk/Gender;)V

    .line 52
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    new-instance v1, Lcom/google/appinventor/components/runtime/MobFoxInterstitial$AdListenerPage;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/MobFoxInterstitial$AdListenerPage;-><init>(Lcom/google/appinventor/components/runtime/MobFoxInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdManager;->setListener(Lcom/adsdk/sdk/AdListener;)V

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->requestAd()V

    .line 54
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->targetGender:Ljava/lang/String;

    const-string/jumbo v1, "female"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    sget-object v1, Lcom/adsdk/sdk/Gender;->FEMALE:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdManager;->setUserGender(Lcom/adsdk/sdk/Gender;)V

    goto :goto_0
.end method

.method public MobFoxPublisherID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public PublisherID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public PublisherID(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisherId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "PublisherId"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->publisherId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public ShowInterstitialAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It will show the Interstitial Ad"
    .end annotation

    .prologue
    .line 150
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdManager;->isAdLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->mManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdManager;->showAd()V

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string/jumbo v0, "Interstitial ad was not ready to be shown. Make sure you have set PublisherId and you invoke this after LoadAd"

    .line 154
    .local v0, "adFailedToLoadMessage":Ljava/lang/String;
    const-string/jumbo v1, "MobFoxInterstitial"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->AdFailedToShow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TargetAge()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 87
    iget v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->targetAge:I

    return v0
.end method

.method public TargetAge(I)V
    .locals 0
    .param p1, "targetAge"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Leave 0 for targeting ALL ages"
    .end annotation

    .prologue
    .line 94
    iput p1, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->targetAge:I

    .line 95
    return-void
.end method

.method public TargetGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ALL"
        editorType = "gender_options"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->targetGender:Ljava/lang/String;

    .line 102
    return-void
.end method
