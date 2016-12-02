.class public Lcom/google/appinventor/components/runtime/LightSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "LightSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that measures the ambient light level (illumination) in lx</p> "
    iconName = "images/lightsensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.hardware.sensor.light"
.end annotation


# static fields
.field private static final SENSOR_CACHE_SIZE:I = 0xa


# instance fields
.field private final LUX_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private accuracy:I

.field private enabled:Z

.field private light:F

.field private lightSensor:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->light:F

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->LUX_CACHE:Ljava/util/Queue;

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->lightSensor:Landroid/hardware/Sensor;

    .line 61
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->startListening()V

    .line 62
    return-void
.end method

.method private addToSensorCache(Ljava/util/Queue;F)V
    .locals 2
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "cache":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 203
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 205
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method private startListening()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->lightSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 106
    return-void
.end method

.method private stopListening()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 156
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 160
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    .line 161
    if-eqz p1, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->startListening()V

    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->stopListening()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    return v0
.end method

.method public Light()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 195
    iget v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->light:F

    return v0
.end method

.method public LightChanged(F)V
    .locals 7
    .param p1, "light"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 174
    iput p1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->light:F

    .line 176
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LightSensor;->LUX_CACHE:Ljava/util/Queue;

    iget v4, p0, Lcom/google/appinventor/components/runtime/LightSensor;->light:F

    invoke-direct {p0, v3, v4}, Lcom/google/appinventor/components/runtime/LightSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 179
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "sdfDate":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 181
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "strDate":Ljava/lang/String;
    const-string/jumbo v3, "LightChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 211
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->stopListening()V

    .line 101
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->startListening()V

    .line 83
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 115
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 117
    .local v0, "values":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->light:F

    .line 118
    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->accuracy:I

    .line 119
    iget v1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->light:F

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/LightSensor;->LightChanged(F)V

    .line 121
    .end local v0    # "values":[F
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->stopListening()V

    .line 92
    :cond_0
    return-void
.end method
