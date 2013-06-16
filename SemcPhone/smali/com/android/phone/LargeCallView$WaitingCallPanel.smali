.class Lcom/android/phone/LargeCallView$WaitingCallPanel;
.super Ljava/lang/Object;
.source "LargeCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LargeCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitingCallPanel"
.end annotation


# instance fields
.field private mPanel:Landroid/view/View;

.field private final mViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/LargeCallView;


# direct methods
.method private constructor <init>(Lcom/android/phone/LargeCallView;)V
    .locals 2
    .parameter

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/android/phone/LargeCallView;->access$400()[[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/LargeCallView;Lcom/android/phone/LargeCallView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1400
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;-><init>(Lcom/android/phone/LargeCallView;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1447
    iget-object v3, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1448
    .local v2, viewEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1449
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1450
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1453
    .end local v1           #view:Landroid/view/View;
    .end local v2           #viewEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1454
    iput-object v4, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPanel:Landroid/view/View;

    .line 1455
    return-void
.end method

.method public init(Landroid/view/View;)V
    .locals 8
    .parameter "panel"

    .prologue
    const/4 v7, 0x0

    .line 1406
    iput-object p1, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPanel:Landroid/view/View;

    .line 1407
    invoke-static {}, Lcom/android/phone/LargeCallView;->access$400()[[I

    move-result-object v0

    .local v0, arr$:[[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1408
    .local v4, viewAndAction:[I
    iget-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    aget v6, v4, v7

    invoke-virtual {v5, v6}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1409
    .local v3, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    aget v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    if-nez v3, :cond_0

    .line 1407
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1411
    :cond_0
    new-instance v5, Lcom/android/phone/LargeCallView$WaitingCallPanel$1;

    invoke-direct {v5, p0, v4}, Lcom/android/phone/LargeCallView$WaitingCallPanel$1;-><init>(Lcom/android/phone/LargeCallView$WaitingCallPanel;[I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1417
    .end local v3           #view:Landroid/view/View;
    .end local v4           #viewAndAction:[I
    :cond_1
    return-void
.end method

.method public setRejectMsgVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 1420
    iget-object v1, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    const v2, 0x7f0700be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1421
    .local v0, rejectMsgView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1422
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1424
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1428
    return-void
.end method

.method public showWaitingCall(ZZ)V
    .locals 7
    .parameter "hideAnswer"
    .parameter "showEndHeldCallAt3rdIncomingCall"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1431
    iget-object v3, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    const v6, 0x7f0700b7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1432
    .local v0, answerButton:Landroid/view/View;
    if-eqz p1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    iget-object v3, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPanel:Landroid/view/View;

    const v6, 0x7f0700b9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1435
    .local v1, endHeldCallAndEndCurrentCallLayout:Landroid/view/View;
    iget-object v3, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    const v6, 0x7f0700bc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1437
    .local v2, replaceWaitingCallButton:Landroid/view/View;
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1438
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1439
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1444
    :goto_1
    return-void

    .end local v1           #endHeldCallAndEndCurrentCallLayout:Landroid/view/View;
    .end local v2           #replaceWaitingCallButton:Landroid/view/View;
    :cond_0
    move v3, v5

    .line 1432
    goto :goto_0

    .line 1441
    .restart local v1       #endHeldCallAndEndCurrentCallLayout:Landroid/view/View;
    .restart local v2       #replaceWaitingCallButton:Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
