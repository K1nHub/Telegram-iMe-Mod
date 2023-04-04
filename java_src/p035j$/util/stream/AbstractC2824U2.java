package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2824U2 implements InterfaceC2788N4 {

    /* renamed from: a */
    private final EnumC2881e4 f850a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2824U2(EnumC2881e4 enumC2881e4) {
        this.f850a = enumC2881e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2814S2 mo284a();

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: b */
    public /* synthetic */ int mo371b() {
        return 0;
    }

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: c */
    public Object mo370c(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        return ((InterfaceC2814S2) new C2829V2(this, abstractC2999y2, interfaceC2701s).invoke()).get();
    }

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: d */
    public Object mo369d(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        InterfaceC2814S2 mo284a = mo284a();
        AbstractC2864c abstractC2864c = (AbstractC2864c) abstractC2999y2;
        Objects.requireNonNull(mo284a);
        abstractC2864c.mo304n0(abstractC2864c.mo296v0(mo284a), interfaceC2701s);
        return mo284a.get();
    }
}
