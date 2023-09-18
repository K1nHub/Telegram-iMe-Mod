package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2874e;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2942F implements InterfaceC2875f {

    /* renamed from: a */
    public final /* synthetic */ int f818a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f819b;

    @Override // p033j$.util.function.InterfaceC2875f
    public final void accept(double d) {
        switch (this.f818a) {
            case 0:
                ((InterfaceC3135m3) this.f819b).accept(d);
                return;
            default:
                ((C2966J) this.f819b).f1031a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        switch (this.f818a) {
            case 0:
                Objects.requireNonNull(interfaceC2875f);
                return new C2874e(this, interfaceC2875f);
            default:
                Objects.requireNonNull(interfaceC2875f);
                return new C2874e(this, interfaceC2875f);
        }
    }
}
