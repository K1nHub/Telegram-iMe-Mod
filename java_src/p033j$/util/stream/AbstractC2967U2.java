package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2967U2 implements InterfaceC2931N4 {

    /* renamed from: a */
    private final EnumC3024e4 f983a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2967U2(EnumC3024e4 enumC3024e4) {
        this.f983a = enumC3024e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2957S2 mo342a();

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: b */
    public /* synthetic */ int mo429b() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: c */
    public Object mo428c(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        return ((InterfaceC2957S2) new C2972V2(this, abstractC3142y2, spliterator).invoke()).get();
    }

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: d */
    public Object mo427d(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        InterfaceC2957S2 mo342a = mo342a();
        AbstractC3007c abstractC3007c = (AbstractC3007c) abstractC3142y2;
        Objects.requireNonNull(mo342a);
        abstractC3007c.mo362m0(abstractC3007c.mo354u0(mo342a), spliterator);
        return mo342a.get();
    }
}
