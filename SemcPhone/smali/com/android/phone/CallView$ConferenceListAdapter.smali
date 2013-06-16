.class public Lcom/android/phone/CallView$ConferenceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConferenceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;
    }
.end annotation


# instance fields
.field private mCanSeparate:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/CallView;


# direct methods
.method constructor <init>(Lcom/android/phone/CallView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 564
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 566
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallView$ConferenceCallItem;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 581
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 586
    if-nez p2, :cond_0

    .line 587
    iget-object v4, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030013

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 589
    new-instance v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;

    invoke-direct {v2, p0}, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;-><init>(Lcom/android/phone/CallView$ConferenceListAdapter;)V

    .line 590
    .local v2, itemViews:Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;
    const v4, 0x7f07004f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->nameText:Landroid/widget/TextView;

    .line 591
    const v4, 0x7f070050

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->infoText:Landroid/widget/TextView;

    .line 593
    const v4, 0x7f070051

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->additionalCallInfoText:Landroid/widget/TextView;

    .line 595
    const v4, 0x7f070053

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->disconnectButton:Landroid/widget/ImageButton;

    .line 597
    const v4, 0x7f070052

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->contactNumberIconView:Landroid/widget/ImageView;

    .line 599
    const v4, 0x7f07004e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->callerInfoPanel:Landroid/widget/RelativeLayout;

    .line 601
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 606
    :goto_0
    iget-object v4, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v4, v4, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 655
    :goto_1
    return-object p2

    .line 603
    .end local v2           #itemViews:Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;

    .restart local v2       #itemViews:Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;
    goto :goto_0

    .line 607
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v4, v4, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallView$ConferenceCallItem;

    .line 609
    .local v1, item:Lcom/android/phone/CallView$ConferenceCallItem;
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->nameText:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/phone/CallView$ConferenceCallItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v4, v1, Lcom/android/phone/CallView$ConferenceCallItem;->additionalCallInfo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 612
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->additionalCallInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    :goto_2
    iget-object v4, v1, Lcom/android/phone/CallView$ConferenceCallItem;->contactNumberIcon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 619
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->contactNumberIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 620
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->contactNumberIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    :goto_3
    new-instance v0, Lcom/android/phone/CallView$ConferenceListAdapter$1;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallView$ConferenceListAdapter$1;-><init>(Lcom/android/phone/CallView$ConferenceListAdapter;Lcom/android/phone/CallView$ConferenceCallItem;)V

    .line 633
    .local v0, disconnectConnection:Landroid/view/View$OnClickListener;
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->disconnectButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    iget-boolean v4, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->mCanSeparate:Z

    if-eqz v4, :cond_4

    .line 636
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->infoText:Landroid/widget/TextView;

    const v5, 0x7f0b009f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 637
    new-instance v3, Lcom/android/phone/CallView$ConferenceListAdapter$2;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/CallView$ConferenceListAdapter$2;-><init>(Lcom/android/phone/CallView$ConferenceListAdapter;Lcom/android/phone/CallView$ConferenceCallItem;)V

    .line 643
    .local v3, separateConnection:Landroid/view/View$OnClickListener;
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->callerInfoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 614
    .end local v0           #disconnectConnection:Landroid/view/View$OnClickListener;
    .end local v3           #separateConnection:Landroid/view/View$OnClickListener;
    :cond_2
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->additionalCallInfoText:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/phone/CallView$ConferenceCallItem;->additionalCallInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->additionalCallInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 622
    :cond_3
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->contactNumberIconView:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/android/phone/CallView$ConferenceCallItem;->contactNumberIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 623
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->contactNumberIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 645
    .restart local v0       #disconnectConnection:Landroid/view/View$OnClickListener;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    invoke-virtual {v4}, Lcom/android/phone/CallView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 647
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->infoText:Landroid/widget/TextView;

    const v5, 0x7f0b00a1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 650
    :cond_5
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->infoText:Landroid/widget/TextView;

    const v5, 0x7f0b00a0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method public setCanSeparate(Z)V
    .locals 0
    .parameter "canSeparate"

    .prologue
    .line 569
    iput-boolean p1, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->mCanSeparate:Z

    .line 570
    return-void
.end method
