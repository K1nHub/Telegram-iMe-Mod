package com.iMe.p032ui.recent_chats;

import com.iMe.storage.domain.model.HistoryDialogModel;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RecentChatsBar.kt */
/* renamed from: com.iMe.ui.recent_chats.RecentChatsBar$removeData$1 */
/* loaded from: classes3.dex */
final class RecentChatsBar$removeData$1 extends Lambda implements Function1<HistoryDialogModel, Boolean> {
    public static final RecentChatsBar$removeData$1 INSTANCE = new RecentChatsBar$removeData$1();

    RecentChatsBar$removeData$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(HistoryDialogModel it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(!it.isPinned());
    }
}
