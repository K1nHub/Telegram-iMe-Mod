package p034j$.util.stream;

import p034j$.util.function.InterfaceC2609w;
/* renamed from: j$.util.stream.O0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2714O0 implements InterfaceC2609w {

    /* renamed from: a */
    public static final /* synthetic */ C2714O0 f807a = new C2714O0();

    private /* synthetic */ C2714O0() {
    }

    @Override // p034j$.util.function.InterfaceC2609w
    public final void accept(Object obj, long j) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + j;
    }
}
