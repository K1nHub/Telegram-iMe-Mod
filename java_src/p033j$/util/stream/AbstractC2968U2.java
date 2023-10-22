package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2968U2 implements InterfaceC2932N4 {

    /* renamed from: a */
    private final EnumC3025e4 f983a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2968U2(EnumC3025e4 enumC3025e4) {
        this.f983a = enumC3025e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2958S2 mo338a();

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: b */
    public /* synthetic */ int mo425b() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: c */
    public Object mo424c(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        return ((InterfaceC2958S2) new C2973V2(this, abstractC3143y2, spliterator).invoke()).get();
    }

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: d */
    public Object mo423d(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        InterfaceC2958S2 mo338a = mo338a();
        AbstractC3008c abstractC3008c = (AbstractC3008c) abstractC3143y2;
        Objects.requireNonNull(mo338a);
        abstractC3008c.mo358m0(abstractC3008c.mo350u0(mo338a), spliterator);
        return mo338a.get();
    }
}
