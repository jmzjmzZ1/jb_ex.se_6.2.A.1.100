.class final enum Lcom/android/settings/LocalePicker$GestureState;
.super Ljava/lang/Enum;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GestureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/LocalePicker$GestureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/LocalePicker$GestureState;

.field public static final enum BOTTOM_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

.field public static final enum DONE:Lcom/android/settings/LocalePicker$GestureState;

.field public static final enum RIGHT_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

.field public static final enum TOP_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

.field public static final enum UNSTARTED:Lcom/android/settings/LocalePicker$GestureState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Lcom/android/settings/LocalePicker$GestureState;

    const-string v1, "UNSTARTED"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/LocalePicker$GestureState;->UNSTARTED:Lcom/android/settings/LocalePicker$GestureState;

    new-instance v0, Lcom/android/settings/LocalePicker$GestureState;

    const-string v1, "TOP_SIDE_DONE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/LocalePicker$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/LocalePicker$GestureState;->TOP_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

    new-instance v0, Lcom/android/settings/LocalePicker$GestureState;

    const-string v1, "RIGHT_SIDE_DONE"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/LocalePicker$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/LocalePicker$GestureState;->RIGHT_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

    new-instance v0, Lcom/android/settings/LocalePicker$GestureState;

    const-string v1, "BOTTOM_SIDE_DONE"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/LocalePicker$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/LocalePicker$GestureState;->BOTTOM_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

    new-instance v0, Lcom/android/settings/LocalePicker$GestureState;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/LocalePicker$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/LocalePicker$GestureState;->DONE:Lcom/android/settings/LocalePicker$GestureState;

    .line 212
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/LocalePicker$GestureState;

    sget-object v1, Lcom/android/settings/LocalePicker$GestureState;->UNSTARTED:Lcom/android/settings/LocalePicker$GestureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/LocalePicker$GestureState;->TOP_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/LocalePicker$GestureState;->RIGHT_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/LocalePicker$GestureState;->BOTTOM_SIDE_DONE:Lcom/android/settings/LocalePicker$GestureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/LocalePicker$GestureState;->DONE:Lcom/android/settings/LocalePicker$GestureState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/LocalePicker$GestureState;->$VALUES:[Lcom/android/settings/LocalePicker$GestureState;

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
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/LocalePicker$GestureState;
    .locals 1
    .parameter

    .prologue
    .line 212
    const-class v0, Lcom/android/settings/LocalePicker$GestureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LocalePicker$GestureState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/LocalePicker$GestureState;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/android/settings/LocalePicker$GestureState;->$VALUES:[Lcom/android/settings/LocalePicker$GestureState;

    invoke-virtual {v0}, [Lcom/android/settings/LocalePicker$GestureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/LocalePicker$GestureState;

    return-object v0
.end method
