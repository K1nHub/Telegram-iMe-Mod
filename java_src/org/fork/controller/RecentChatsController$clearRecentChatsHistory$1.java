package org.fork.controller;

import com.smedialink.storage.domain.model.HistoryDialogModel;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RecentChatsController.kt */
/* loaded from: classes4.dex */
final class RecentChatsController$clearRecentChatsHistory$1 extends Lambda implements Function1<HistoryDialogModel, Boolean> {
    public static final RecentChatsController$clearRecentChatsHistory$1 INSTANCE = new RecentChatsController$clearRecentChatsHistory$1();

    RecentChatsController$clearRecentChatsHistory$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(HistoryDialogModel it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(!it.isPinned());
    }
}
