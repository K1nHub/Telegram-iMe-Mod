package com.iMe.feature.devTools;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.orbitmvi.orbit.syntax.simple.SimpleContext;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntax;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DevViewModel.kt */
@DebugMetadata(m84c = "com.iMe.feature.devTools.DevViewModel$onCreate$1", m83f = "DevViewModel.kt", m82l = {21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33}, m81m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class DevViewModel$onCreate$1 extends SuspendLambda implements Function2<SimpleSyntax<DevState, DevSideEffects>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DevViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DevViewModel$onCreate$1(DevViewModel devViewModel, Continuation<? super DevViewModel$onCreate$1> continuation) {
        super(2, continuation);
        this.this$0 = devViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DevViewModel$onCreate$1 devViewModel$onCreate$1 = new DevViewModel$onCreate$1(this.this$0, continuation);
        devViewModel$onCreate$1.L$0 = obj;
        return devViewModel$onCreate$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<DevState, DevSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((DevViewModel$onCreate$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00b9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x010a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0117 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0126 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0135 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0142 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0151 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.devTools.DevViewModel$onCreate$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DevViewModel.kt */
    /* renamed from: com.iMe.feature.devTools.DevViewModel$onCreate$1$1 */
    /* loaded from: classes3.dex */
    public static final class C14431 extends Lambda implements Function1<SimpleContext<DevState>, DevState> {
        public static final C14431 INSTANCE = new C14431();

        C14431() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final DevState invoke(SimpleContext<DevState> reduce) {
            Intrinsics.checkNotNullParameter(reduce, "$this$reduce");
            return DevState.copy$default(reduce.getState(), null, true, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DevViewModel.kt */
    /* renamed from: com.iMe.feature.devTools.DevViewModel$onCreate$1$2 */
    /* loaded from: classes3.dex */
    public static final class C14442 extends Lambda implements Function1<SimpleContext<DevState>, DevState> {
        public static final C14442 INSTANCE = new C14442();

        C14442() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final DevState invoke(SimpleContext<DevState> reduce) {
            Intrinsics.checkNotNullParameter(reduce, "$this$reduce");
            return DevState.copy$default(reduce.getState(), "My name is: Ime", false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DevViewModel.kt */
    /* renamed from: com.iMe.feature.devTools.DevViewModel$onCreate$1$3 */
    /* loaded from: classes3.dex */
    public static final class C14453 extends Lambda implements Function1<SimpleContext<DevState>, DevState> {
        final /* synthetic */ String $repoName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14453(String str) {
            super(1);
            this.$repoName = str;
        }

        @Override // kotlin.jvm.functions.Function1
        public final DevState invoke(SimpleContext<DevState> reduce) {
            Intrinsics.checkNotNullParameter(reduce, "$this$reduce");
            return DevState.copy$default(reduce.getState(), "This is data from repo:\n" + this.$repoName, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DevViewModel.kt */
    /* renamed from: com.iMe.feature.devTools.DevViewModel$onCreate$1$4 */
    /* loaded from: classes3.dex */
    public static final class C14464 extends Lambda implements Function1<SimpleContext<DevState>, DevState> {
        public static final C14464 INSTANCE = new C14464();

        C14464() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final DevState invoke(SimpleContext<DevState> reduce) {
            Intrinsics.checkNotNullParameter(reduce, "$this$reduce");
            return DevState.copy$default(reduce.getState(), null, false, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DevViewModel.kt */
    /* renamed from: com.iMe.feature.devTools.DevViewModel$onCreate$1$5 */
    /* loaded from: classes3.dex */
    public static final class C14475 extends Lambda implements Function1<SimpleContext<DevState>, DevState> {
        public static final C14475 INSTANCE = new C14475();

        C14475() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final DevState invoke(SimpleContext<DevState> reduce) {
            Intrinsics.checkNotNullParameter(reduce, "$this$reduce");
            return DevState.copy$default(reduce.getState(), "Good bye", false, 2, null);
        }
    }
}
