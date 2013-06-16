.class Lcom/android/settings/LocalePicker$AccessibilityTouchListener;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityTouchListener"
.end annotation


# instance fields
.field private mGestures:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/android/settings/LocalePicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/LocalePicker;Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "v"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/LocalePicker$AccessibilityTouchListener;->this$0:Lcom/android/settings/LocalePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;

    invoke-direct {v1, p1, p3}, Lcom/android/settings/LocalePicker$AccessibilityGestureListener;-><init>(Lcom/android/settings/LocalePicker;Landroid/view/View;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/settings/LocalePicker$AccessibilityTouchListener;->mGestures:Landroid/view/GestureDetector;

    .line 202
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/LocalePicker$AccessibilityTouchListener;->mGestures:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
