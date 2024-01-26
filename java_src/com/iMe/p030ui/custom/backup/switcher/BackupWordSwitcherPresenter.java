package com.iMe.p030ui.custom.backup.switcher;

import com.iMe.p030ui.base.mvp.base.BasePresenter;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import moxy.InjectViewState;
/* compiled from: BackupWordSwitcherPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.custom.backup.switcher.BackupWordSwitcherPresenter */
/* loaded from: classes3.dex */
public final class BackupWordSwitcherPresenter extends BasePresenter<Object> {
    private List<String> seed;

    static {
        new Companion(null);
    }

    public BackupWordSwitcherPresenter() {
        List<String> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.seed = emptyList;
    }

    /* compiled from: BackupWordSwitcherPresenter.kt */
    /* renamed from: com.iMe.ui.custom.backup.switcher.BackupWordSwitcherPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
