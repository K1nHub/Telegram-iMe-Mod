package p033j$.util.stream;

import p033j$.util.function.InterfaceC2836v;
/* renamed from: j$.util.stream.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3125u0 implements InterfaceC2836v {

    /* renamed from: a */
    public static final /* synthetic */ C3125u0 f1145a = new C3125u0();

    private /* synthetic */ C3125u0() {
    }

    @Override // p033j$.util.function.InterfaceC2836v
    public final void accept(Object obj, int i) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + i;
    }
}
