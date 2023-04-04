package com.iMe.p032ui.custom.backup.switcher;

import java.util.List;
import moxy.MvpView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: BackupWordSwitcherMvpView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.custom.backup.switcher.BackupWordSwitcherMvpView */
/* loaded from: classes3.dex */
public interface BackupWordSwitcherMvpView extends MvpView {
    void setupBackupWords(List<String> list);

    void setupTitle(int i);
}
