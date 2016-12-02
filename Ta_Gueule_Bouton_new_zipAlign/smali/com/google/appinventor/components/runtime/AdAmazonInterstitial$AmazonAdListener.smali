.class Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;
.super Lcom/amazon/device/ads/DefaultAdListener;
.source "AdAmazonInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AmazonAdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;->this$0:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-direct {p0}, Lcom/amazon/device/ads/DefaultAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "paramAd"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 234
    const-string/jumbo v0, "AdAmazonInterstitial"

    const-string/jumbo v1, "Ad collapsed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;->this$0:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdCollapsed()V

    .line 236
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 259
    const-string/jumbo v0, "AdAmazonInterstitial"

    const-string/jumbo v1, "Ad onAdDismissed finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;->this$0:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdClosed()V

    .line 261
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "paramAd"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 239
    const-string/jumbo v0, "AdAmazonInterstitial"

    const-string/jumbo v1, "Ad expanded."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;->this$0:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdExpanded()V

    .line 241
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 4
    .param p1, "view"    # Lcom/amazon/device/ads/Ad;
    .param p2, "error"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 244
    const-string/jumbo v1, "AdAmazonInterstitial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ad failed to load. Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;->this$0:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const/4 v2, 0x0

    # setter for: Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->isAdLoaded:Z
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->access$002(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;Z)Z

    .line 248
    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;->this$0:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 3
    .param p1, "paramAd"    # Lcom/amazon/device/ads/Ad;
    .param p2, "adProperties"    # Lcom/amazon/device/ads/AdProperties;

    .prologue
    .line 253
    const-string/jumbo v0, "AdAmazonInterstitial"

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

    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;->this$0:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const/4 v1, 0x1

    # setter for: Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->isAdLoaded:Z
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->access$002(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;Z)Z

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$AmazonAdListener;->this$0:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdLoaded()V

    .line 256
    return-void
.end method
