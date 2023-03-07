package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2464p;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2618W0 implements InterfaceC2465q {

    /* renamed from: a */
    public final /* synthetic */ int f845a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f846b;

    @Override // p034j$.util.function.InterfaceC2465q
    public final void accept(long j) {
        switch (this.f845a) {
            case 0:
                ((InterfaceC2714m3) this.f846b).accept(j);
                return;
            default:
                ((C2633Z0) this.f846b).f953a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        switch (this.f845a) {
            case 0:
                Objects.requireNonNull(interfaceC2465q);
                return new C2464p(this, interfaceC2465q);
            default:
                Objects.requireNonNull(interfaceC2465q);
                return new C2464p(this, interfaceC2465q);
        }
    }
}
