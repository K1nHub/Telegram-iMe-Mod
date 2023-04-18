package com.iMe.p031ui.recent_chats;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RecentChatsBar.kt */
/* renamed from: com.iMe.ui.recent_chats.RecentChatsBar$listView$2 */
/* loaded from: classes3.dex */
public final class RecentChatsBar$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ RecentChatsBar this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentChatsBar$listView$2(RecentChatsBar recentChatsBar) {
        super(0);
        this.this$0 = recentChatsBar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initHorizontalListView;
        initHorizontalListView = this.this$0.initHorizontalListView();
        return initHorizontalListView;
    }
}
