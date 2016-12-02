.class public Lcom/google/appinventor/components/runtime/TemperatureSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TemperatureSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that measures the temperature of the device in degrees Celsius. This sensor implementation varies across devices. </p> "
    iconName = "images/temperaturesensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final SENSOR_CACHE_SIZE:I = 0xa


# instance fields
.field private final TEMPERATURE_CACHE:Ljava/util/Queue;
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

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private temperature:F

.field private temperatureSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 46
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->TEMPERATURE_CACHE:Ljava/util/Queue;

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->enabled:Z

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 52
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TemperatureSensor;->getTemperatureSensor()Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->temperatureSensor:Landroid/hardware/Sensor;

    .line 53
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TemperatureSensor;->startListening()V

    .line 54
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
    .line 201
    .local p1, "cache":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 202
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 204
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method private getTemperatureSensor()Landroid/hardware/Sensor;
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 58
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 61
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :goto_0
    return-object v0

    .restart local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0
.end method

.method private startListening()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->temperatureSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 114
    return-void
.end method

.method private stopListening()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

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
    .line 163
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 167
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->enabled:Z

    .line 168
    if-eqz p1, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TemperatureSensor;->startListening()V

    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TemperatureSensor;->stopListening()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->enabled:Z

    return v0
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->temperatureSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public Temperature()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 194
    iget v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->temperature:F

    return v0
.end method

.method public TemperatureChanged(F)V
    .locals 6
    .param p1, "temperature"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 177
    iput p1, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->temperature:F

    .line 179
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->TEMPERATURE_CACHE:Ljava/util/Queue;

    iget v3, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->temperature:F

    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/TemperatureSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    .local v0, "currentTime":J
    const-string/jumbo v2, "TemperatureChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->temperature:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 210
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TemperatureSensor;->stopListening()V

    .line 109
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TemperatureSensor;->startListening()V

    .line 91
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 123
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 125
    .local v0, "values":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->temperature:F

    .line 126
    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->accuracy:I

    .line 127
    iget v1, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->temperature:F

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TemperatureSensor;->TemperatureChanged(F)V

    .line 129
    .end local v0    # "values":[F
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TemperatureSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TemperatureSensor;->stopListening()V

    .line 100
    :cond_0
    return-void
.end method
