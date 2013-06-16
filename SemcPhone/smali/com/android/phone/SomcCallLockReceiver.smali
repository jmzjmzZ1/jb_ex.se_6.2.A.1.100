.class public Lcom/android/phone/SomcCallLockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SomcCallLockReceiver.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mPrefixNumList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/SomcCallLockReceiver;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startWithPrefixNum(Ljava/lang/String;)Z
    .locals 9
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 63
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v5

    .line 65
    :cond_1
    iget-object v6, p0, Lcom/android/phone/SomcCallLockReceiver;->mPrefixNumList:[Ljava/lang/String;

    if-nez v6, :cond_3

    move v3, v5

    .line 67
    .local v3, listSize:I
    :goto_1
    sget-boolean v6, Lcom/android/phone/SomcCallLockReceiver;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "SomcCallLockReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prefix num list size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    if-lez v3, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/phone/SomcCallLockReceiver;->mPrefixNumList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 70
    .local v4, prefixNum:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 72
    const/4 v5, 0x1

    goto :goto_0

    .line 65
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #listSize:I
    .end local v4           #prefixNum:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/phone/SomcCallLockReceiver;->mPrefixNumList:[Ljava/lang/String;

    array-length v3, v6

    goto :goto_1

    .line 69
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #listSize:I
    .restart local v4       #prefixNum:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    sget-boolean v1, Lcom/android/phone/SomcCallLockReceiver;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SomcCallLockReceiver"

    const-string v2, "SomcCallLockReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, number:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/SomcCallLockReceiver;->mPrefixNumList:[Ljava/lang/String;

    if-nez v1, :cond_3

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcCallLockReceiver;->mPrefixNumList:[Ljava/lang/String;

    .line 43
    :cond_3
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/phone/SomcCallLockReceiver;->startWithPrefixNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/phone/SomcPhoneUtils;->isInternatioalCallLockOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const v1, 0x7f0b0120

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcCallLockReceiver;->setResultData(Ljava/lang/String;)V

    goto :goto_0
.end method
