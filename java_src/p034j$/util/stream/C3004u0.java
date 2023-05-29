package p034j$.util.stream;

import p034j$.util.function.InterfaceC2715v;
/* renamed from: j$.util.stream.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3004u0 implements InterfaceC2715v {

    /* renamed from: a */
    public static final /* synthetic */ C3004u0 f1063a = new C3004u0();

    private /* synthetic */ C3004u0() {
    }

    @Override // p034j$.util.function.InterfaceC2715v
    public final void accept(Object obj, int i) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + i;
    }
}
