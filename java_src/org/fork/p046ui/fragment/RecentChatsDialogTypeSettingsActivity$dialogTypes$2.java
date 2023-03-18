package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.enums.RecentChatsDialogType;
/* compiled from: RecentChatsDialogTypeSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.RecentChatsDialogTypeSettingsActivity$dialogTypes$2 */
/* loaded from: classes4.dex */
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
