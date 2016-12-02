.class public Lcom/google/appinventor/components/runtime/PressureSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "PressureSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that measures the ambient air pressure in hPa or mbar.</p> "
    iconName = "images/pressuresensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final SENSOR_CACHE_SIZE:I = 0xa


# instance fields
.field private final PRESSURE_CACHE:Ljava/util/Queue;
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

.field private altitude:F

.field private enabled:Z

.field private keepRunningWhenOnPause:Z

.field private pressure:F

.field private pressureSensor:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 38
    iput v1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->pressure:F

    .line 39
    iput v1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->altitude:F

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->PRESSURE_CACHE:Ljava/util/Queue;

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    .line 61
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->pressureSensor:Landroid/hardware/Sensor;

    .line 63
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->startListening()V

    .line 64
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
    .line 250
    .local p1, "cache":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 251
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 253
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method private startListening()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->pressureSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 116
    return-void
.end method

.method private stopListening()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 121
    return-void
.end method


# virtual methods
.method public Altitude()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 215
    iget v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->altitude:F

    return v0
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 75
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

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 243
    iget v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->pressure:F

    return v0
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
    .line 168
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    .line 173
    if-eqz p1, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->startListening()V

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->stopListening()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    return v0
.end method

.method public KeepRunningWhenOnPause(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->keepRunningWhenOnPause:Z

    .line 198
    return-void
.end method

.method public KeepRunningWhenOnPause()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->keepRunningWhenOnPause:Z

    return v0
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->pressureSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public Pressure()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 206
    iget v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->pressure:F

    return v0
.end method

.method public PressureChanged(FF)V
    .locals 6
    .param p1, "pressure"    # F
    .param p2, "altitude"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 226
    iput p1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->pressure:F

    .line 228
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->PRESSURE_CACHE:Ljava/util/Queue;

    iget v3, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->pressure:F

    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/PressureSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 232
    .local v0, "currentTime":J
    const-string/jumbo v2, "PressureChanged"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 259
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->stopListening()V

    .line 103
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->keepRunningWhenOnPause:Z

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->stopListening()V

    .line 110
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->startListening()V

    .line 85
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 125
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 128
    .local v0, "values":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->pressure:F

    .line 129
    const v1, 0x447d5000    # 1013.25f

    iget v2, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->pressure:F

    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->altitude:F

    .line 130
    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->accuracy:I

    .line 131
    iget v1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->pressure:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->altitude:F

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/PressureSensor;->PressureChanged(FF)V

    .line 133
    .end local v0    # "values":[F
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->stopListening()V

    .line 94
    :cond_0
    return-void
.end method
