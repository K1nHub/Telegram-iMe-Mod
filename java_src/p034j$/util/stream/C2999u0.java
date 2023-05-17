package p034j$.util.stream;

import p034j$.util.function.InterfaceC2710v;
/* renamed from: j$.util.stream.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2999u0 implements InterfaceC2710v {

    /* renamed from: a */
    public static final /* synthetic */ C2999u0 f1063a = new C2999u0();

    private /* synthetic */ C2999u0() {
    }

    @Override // p034j$.util.function.InterfaceC2710v
    public final void accept(Object obj, int i) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + i;
    }
}
