package com.smedialink.model.wallet.crypto.tutorial;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p048ui.ActionBar.BaseFragment;
/* compiled from: TutorialType.kt */
/* loaded from: classes3.dex */
public abstract class TutorialType {
    public /* synthetic */ TutorialType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private TutorialType() {
    }

    /* compiled from: TutorialType.kt */
    /* loaded from: classes3.dex */
    public static final class Intro extends TutorialType {
        public static final Intro INSTANCE = new Intro();

        private Intro() {
            super(null);
        }
    }

    /* compiled from: TutorialType.kt */
    /* loaded from: classes3.dex */
    public static final class Backup extends TutorialType {
        private final Function0<BaseFragment> onTutorialPassedFragmentCreator;

        public final Function0<BaseFragment> getOnTutorialPassedFragmentCreator() {
            return this.onTutorialPassedFragmentCreator;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Backup(Function0<? extends BaseFragment> onTutorialPassedFragmentCreator) {
            super(null);
            Intrinsics.checkNotNullParameter(onTutorialPassedFragmentCreator, "onTutorialPassedFragmentCreator");
            this.onTutorialPassedFragmentCreator = onTutorialPassedFragmentCreator;
        }
    }
}
