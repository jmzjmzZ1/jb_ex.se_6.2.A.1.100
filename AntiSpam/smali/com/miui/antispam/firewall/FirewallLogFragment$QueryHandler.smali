.class Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FirewallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FirewallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/antispam/firewall/FirewallLogFragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Lcom/miui/antispam/firewall/FirewallLogFragment;)V
    .locals 1
    .parameter
    .parameter "fragment"

    .prologue
    .line 580
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    .line 581
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {p2}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 582
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 583
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 587
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/firewall/FirewallLogFragment;

    .line 588
    .local v1, fragment:Lcom/miui/antispam/firewall/FirewallLogFragment;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_4

    .line 589
    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    .line 590
    if-eqz p3, :cond_1

    .line 591
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$600(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/ResourceCursorAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 593
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 594
    .local v0, count:I
    if-nez v0, :cond_3

    .line 595
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmpty:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$700(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 596
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$800(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 597
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I
    invoke-static {v2}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$300(Lcom/miui/antispam/firewall/FirewallLogFragment;)I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_2

    .line 598
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmptyImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$900(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmptyText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$1000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f070060

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 609
    :cond_0
    :goto_0
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$400(Lcom/miui/antispam/firewall/FirewallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mCountView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$1100(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    .end local v0           #count:I
    :cond_1
    :goto_1
    return-void

    .line 600
    .restart local v0       #count:I
    :cond_2
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I
    invoke-static {v2}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$300(Lcom/miui/antispam/firewall/FirewallLogFragment;)I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_0

    .line 601
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmptyImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$900(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020003

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 602
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmptyText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$1000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f070061

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 605
    :cond_3
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmpty:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$700(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 606
    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$800(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 615
    .end local v0           #count:I
    :cond_4
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
