package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2602p;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2756W0 implements InterfaceC2603q {

    /* renamed from: a */
    public final /* synthetic */ int f851a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f852b;

    @Override // p034j$.util.function.InterfaceC2603q
    public final void accept(long j) {
        switch (this.f851a) {
            case 0:
                ((InterfaceC2852m3) this.f852b).accept(j);
                return;
            default:
                ((C2771Z0) this.f852b).f959a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        switch (this.f851a) {
            case 0:
                Objects.requireNonNull(interfaceC2603q);
                return new C2602p(this, interfaceC2603q);
            default:
                Objects.requireNonNull(interfaceC2603q);
                return new C2602p(this, interfaceC2603q);
        }
    }
}
