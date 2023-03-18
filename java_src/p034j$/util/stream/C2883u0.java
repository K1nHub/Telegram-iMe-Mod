package p034j$.util.stream;

import p034j$.util.function.InterfaceC2594v;
/* renamed from: j$.util.stream.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2883u0 implements InterfaceC2594v {

    /* renamed from: a */
    public static final /* synthetic */ C2883u0 f1059a = new C2883u0();

    private /* synthetic */ C2883u0() {
    }

    @Override // p034j$.util.function.InterfaceC2594v
    public final void accept(Object obj, int i) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + i;
    }
}
