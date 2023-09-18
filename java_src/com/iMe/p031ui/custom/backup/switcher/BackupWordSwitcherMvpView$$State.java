package com.iMe.p031ui.custom.backup.switcher;

import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
/* renamed from: com.iMe.ui.custom.backup.switcher.BackupWordSwitcherMvpView$$State */
/* loaded from: classes4.dex */
public class BackupWordSwitcherMvpView$$State extends MvpViewState<BackupWordSwitcherMvpView> implements BackupWordSwitcherMvpView {
    @Override // com.iMe.p031ui.custom.backup.switcher.BackupWordSwitcherMvpView
    public void setupTitle(int i) {
        SetupTitleCommand setupTitleCommand = new SetupTitleCommand(this, i);
        this.viewCommands.beforeApply(setupTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupTitle(i);
        }
        this.viewCommands.afterApply(setupTitleCommand);
    }

    @Override // com.iMe.p031ui.custom.backup.switcher.BackupWordSwitcherMvpView
    public void setupBackupWords(List<String> list) {
        SetupBackupWordsCommand setupBackupWordsCommand = new SetupBackupWordsCommand(this, list);
        this.viewCommands.beforeApply(setupBackupWordsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupBackupWords(list);
        }
        this.viewCommands.afterApply(setupBackupWordsCommand);
    }

    /* compiled from: BackupWordSwitcherMvpView$$State.java */
    /* renamed from: com.iMe.ui.custom.backup.switcher.BackupWordSwitcherMvpView$$State$SetupTitleCommand */
    /* loaded from: classes4.dex */
    public class SetupTitleCommand extends ViewCommand<BackupWordSwitcherMvpView> {
        public final int rightWordPosition;

        SetupTitleCommand(BackupWordSwitcherMvpView$$State backupWordSwitcherMvpView$$State, int i) {
            super("setupTitle", AddToEndSingleStrategy.class);
            this.rightWordPosition = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BackupWordSwitcherMvpView backupWordSwitcherMvpView) {
            backupWordSwitcherMvpView.setupTitle(this.rightWordPosition);
        }
    }

    /* compiled from: BackupWordSwitcherMvpView$$State.java */
    /* renamed from: com.iMe.ui.custom.backup.switcher.BackupWordSwitcherMvpView$$State$SetupBackupWordsCommand */
    /* loaded from: classes4.dex */
    public class SetupBackupWordsCommand extends ViewCommand<BackupWordSwitcherMvpView> {
        public final List<String> words;

        SetupBackupWordsCommand(BackupWordSwitcherMvpView$$State backupWordSwitcherMvpView$$State, List<String> list) {
            super("setupBackupWords", AddToEndSingleStrategy.class);
            this.words = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BackupWordSwitcherMvpView backupWordSwitcherMvpView) {
            backupWordSwitcherMvpView.setupBackupWords(this.words);
        }
    }
}
