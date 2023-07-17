package com.iMe.p031ui.custom.backup.switcher;

import com.iMe.p031ui.base.mvp.base.BasePresenter;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: BackupWordSwitcherPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.custom.backup.switcher.BackupWordSwitcherPresenter */
/* loaded from: classes3.dex */
public final class BackupWordSwitcherPresenter extends BasePresenter<BackupWordSwitcherMvpView> {
    private String rightWord;
    private List<String> seed;

    static {
        new Companion(null);
    }

    public BackupWordSwitcherPresenter() {
        List<String> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.seed = emptyList;
        this.rightWord = "";
    }

    public final void setupWithSeed(List<String> walletSeed, List<String> partOfSeed) {
        List<String> shuffled;
        Intrinsics.checkNotNullParameter(walletSeed, "walletSeed");
        Intrinsics.checkNotNullParameter(partOfSeed, "partOfSeed");
        shuffled = CollectionsKt__CollectionsJVMKt.shuffled(partOfSeed);
        this.seed = shuffled;
        this.rightWord = (String) CollectionsKt.first((List<? extends Object>) shuffled);
        setupTitle(walletSeed);
        setupBackupWords();
    }

    private final void setupTitle(List<String> list) {
        ((BackupWordSwitcherMvpView) getViewState()).setupTitle(list.indexOf(this.rightWord) + 1);
    }

    private final void setupBackupWords() {
        String str;
        Object obj;
        List listOfNotNull;
        List<String> shuffled;
        String[] strArr = new String[3];
        strArr[0] = this.rightWord;
        Iterator<T> it = this.seed.iterator();
        while (true) {
            str = null;
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (!Intrinsics.areEqual((String) obj, this.rightWord)) {
                break;
            }
        }
        strArr[1] = (String) obj;
        List<String> list = this.seed;
        ListIterator<String> listIterator = list.listIterator(list.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                break;
            }
            String previous = listIterator.previous();
            if (!Intrinsics.areEqual(previous, this.rightWord)) {
                str = previous;
                break;
            }
        }
        strArr[2] = str;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) strArr);
        shuffled = CollectionsKt__CollectionsJVMKt.shuffled(listOfNotNull);
        if (shuffled.size() == 3) {
            ((BackupWordSwitcherMvpView) getViewState()).setupBackupWords(shuffled);
        }
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
