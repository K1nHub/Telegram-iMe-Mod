package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.enums.DrawStatusType;
/* compiled from: RecentChatsDialogTypeSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.RecentChatsDialogTypeSettingsActivity$drawStatusTypes$2 */
/* loaded from: classes4.dex */
final class RecentChatsDialogTypeSettingsActivity$drawStatusTypes$2 extends Lambda implements Function0<DrawStatusType[]> {
    public static final RecentChatsDialogTypeSettingsActivity$drawStatusTypes$2 INSTANCE = new RecentChatsDialogTypeSettingsActivity$drawStatusTypes$2();

    RecentChatsDialogTypeSettingsActivity$drawStatusTypes$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final DrawStatusType[] invoke() {
        return DrawStatusType.values();
    }
}
