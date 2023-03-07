package com.smedialink.p031ui.recent_chats;

import com.smedialink.p031ui.recent_chats.RecentChatsBar;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: RecentChatsBar.kt */
/* renamed from: com.smedialink.ui.recent_chats.RecentChatsBar$listAdapter$2 */
/* loaded from: classes3.dex */
final class RecentChatsBar$listAdapter$2 extends Lambda implements Function0<RecentChatsBar.ListAdapter> {
    final /* synthetic */ RecentChatsBar this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentChatsBar$listAdapter$2(RecentChatsBar recentChatsBar) {
        super(0);
        this.this$0 = recentChatsBar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final RecentChatsBar.ListAdapter invoke() {
        return new RecentChatsBar.ListAdapter(this.this$0);
    }
}
