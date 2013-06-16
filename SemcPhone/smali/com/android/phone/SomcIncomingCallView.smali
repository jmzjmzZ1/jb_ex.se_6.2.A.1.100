.class public abstract Lcom/android/phone/SomcIncomingCallView;
.super Landroid/widget/LinearLayout;
.source "SomcIncomingCallView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;
    }
.end annotation


# instance fields
.field protected mOnIncomingCallRspListener:Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method setOnIncomingCallRspListener(Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/phone/SomcIncomingCallView;->mOnIncomingCallRspListener:Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;

    .line 33
    return-void
.end method

.method abstract setRejectMsgVisibility(I)V
.end method
