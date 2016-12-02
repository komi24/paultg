.class public final Lcom/google/appinventor/components/runtime/YandexTranslate;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "YandexTranslate.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Use this component to translate words and sentences between different languages. This component needs Internet access, as it will request translations to the Yandex.Translate service. Specify the source and target language in the form source-target using two letter language codes. So\"en-es\" will translate from English to Spanish while \"es-ru\" will translate from Spanish to Russian. If you leave out the source language, the service will attempt to detect the source language. So providing just \"es\" will attempt to detect the source language and translate it to Spanish.<p /> This component is powered by the Yandex translation service.  See http://api.yandex.com/translate/ for more information, including the list of available languages and the meanings of the language codes and status codes. <p />Note: Translation happens asynchronously in the background. When the translation is complete, the \"GotTranslation\" event is triggered."
    iconName = "images/yandex.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field public static final YANDEX_TRANSLATE_SERVICE_URL:Ljava/lang/String; = "https://translate.yandex.net/api/v1.5/tr.json/translate?key="


# instance fields
.field private Yandex_API_Key:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 58
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 49
    const-string/jumbo v0, "Yandex_API_Key"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->Yandex_API_Key:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->setYandexTranslateTagline()V

    .line 66
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->activity:Landroid/app/Activity;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/YandexTranslate;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/YandexTranslate;->performRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 8
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 176
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "encoding":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 178
    const-string/jumbo v2, "UTF-8"

    .line 180
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 182
    .local v4, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 183
    .local v1, "contentLength":I
    if-eq v1, v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 188
    .local v0, "buf":[C
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, "read":I
    if-eq v3, v7, :cond_2

    .line 189
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 193
    .end local v0    # "buf":[C
    .end local v1    # "contentLength":I
    .end local v3    # "read":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    throw v6

    .line 183
    .restart local v1    # "contentLength":I
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 191
    .restart local v0    # "buf":[C
    .restart local v3    # "read":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 193
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    return-object v6
.end method

.method private performRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "languageToTranslateTo"    # Ljava/lang/String;
    .param p2, "textToTranslate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "https://translate.yandex.net/api/v1.5/tr.json/translate?key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->Yandex_API_Key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&lang="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {p2, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "finalURL":Ljava/lang/String;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 141
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 142
    .local v0, "connection":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/YandexTranslate;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "responseContent":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, "jsonResponse":Lorg/json/JSONObject;
    const-string/jumbo v8, "code"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "responseCode":Ljava/lang/String;
    const-string/jumbo v8, "text"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 152
    .local v3, "response":Lorg/json/JSONArray;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 155
    .local v6, "translation":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->activity:Landroid/app/Activity;

    new-instance v9, Lcom/google/appinventor/components/runtime/YandexTranslate$2;

    invoke-direct {v9, p0, v4, v6}, Lcom/google/appinventor/components/runtime/YandexTranslate$2;-><init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    .end local v2    # "jsonResponse":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/json/JSONArray;
    .end local v4    # "responseCode":Ljava/lang/String;
    .end local v5    # "responseContent":Ljava/lang/String;
    .end local v6    # "translation":Ljava/lang/String;
    :cond_0
    return-void

    .line 163
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v8
.end method


# virtual methods
.method public GotTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseCode"    # Ljava/lang/String;
    .param p2, "translation"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the Yandex.Translate service returns the translated text. This event also provides a response code for error handling. If the responseCode is not 200, then something went wrong with the call, and the translation will not be available."
    .end annotation

    .prologue
    .line 208
    const-string/jumbo v0, "GotTranslation"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public RequestTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "languageToTranslateTo"    # Ljava/lang/String;
    .param p2, "textToTranslate"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "By providing a target language to translate to (for instance, \'es\' for Spanish, \'en\' for English, or \'ru\' for Russian), and a word or sentence to translate, this method will request a translation to the Yandex.Translate service.\nOnce the text is translated by the external service, the event GotTranslation will be executed.\nNote: Yandex.Translate will attempt to detect the source language. You can also specify prepending it to the language translation. I.e., es-ru will specify Spanish to Russian translation."
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->Yandex_API_Key:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v1, "RequestTranslation"

    const/16 v2, 0x899

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 122
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/YandexTranslate$1;-><init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public Yandex_API_Key()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->Yandex_API_Key:Ljava/lang/String;

    return-object v0
.end method

.method public Yandex_API_Key(Ljava/lang/String;)V
    .locals 0
    .param p1, "Yandex_API_Key"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Yandex_API_Key"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The API Key for image uploading, provided by Yandex.You can obtain an API key from here: http://api.yandex.com/key/form.xml?service=trnsl"
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->Yandex_API_Key:Ljava/lang/String;

    .line 87
    return-void
.end method
