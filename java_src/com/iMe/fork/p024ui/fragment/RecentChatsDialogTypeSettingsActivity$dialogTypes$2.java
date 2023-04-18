package com.iMe.fork.p024ui.fragment;

import com.iMe.fork.enums.RecentChatsDialogType;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: RecentChatsDialogTypeSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.RecentChatsDialogTypeSettingsActivity$dialogTypes$2 */
/* loaded from: classes3.dex */
final class RecentChatsDialogTypeSettingsActivity$dialogTypes$2 extends Lambda implements Function0<RecentChatsDialogType[]> {
    public static final RecentChatsDialogTypeSettingsActivity$dialogTypes$2 INSTANCE = new RecentChatsDialogTypeSettingsActivity$dialogTypes$2();

    RecentChatsDialogTypeSettingsActivity$dialogTypes$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecentChatsDialogType[] invoke() {
        return RecentChatsDialogType.values();
    }
}
