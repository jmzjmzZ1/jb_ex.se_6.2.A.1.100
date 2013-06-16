.class final enum Lcom/android/phone/SomcCallIllumination$IlluminationMode;
.super Ljava/lang/Enum;
.source "SomcCallIllumination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcCallIllumination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IlluminationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/SomcCallIllumination$IlluminationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/SomcCallIllumination$IlluminationMode;

.field public static final enum LIGHTON:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

.field public static final enum PULSE:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

.field public static final enum RINGTONE:Lcom/android/phone/SomcCallIllumination$IlluminationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    const-string v1, "PULSE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SomcCallIllumination$IlluminationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->PULSE:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    new-instance v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    const-string v1, "RINGTONE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/SomcCallIllumination$IlluminationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->RINGTONE:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    new-instance v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    const-string v1, "LIGHTON"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/SomcCallIllumination$IlluminationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->LIGHTON:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    sget-object v1, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->PULSE:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->RINGTONE:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->LIGHTON:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->$VALUES:[Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/SomcCallIllumination$IlluminationMode;
    .locals 1
    .parameter

    .prologue
    .line 100
    const-class v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/SomcCallIllumination$IlluminationMode;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->$VALUES:[Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    invoke-virtual {v0}, [Lcom/android/phone/SomcCallIllumination$IlluminationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    return-object v0
.end method
