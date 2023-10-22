package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC2896H4 extends AbstractC2908J4 implements Spliterator.InterfaceC2775d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2896H4(Spliterator.InterfaceC2775d interfaceC2775d, long j, long j2) {
        super(interfaceC2775d, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2896H4(Spliterator.InterfaceC2775d interfaceC2775d, AbstractC2896H4 abstractC2896H4) {
        super(interfaceC2775d, abstractC2896H4);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: forEachRemaining */
    public void m569e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC3055j4 abstractC3055j4 = null;
        while (true) {
            int m561r = m561r();
            if (m561r == 1) {
                return;
            }
            if (m561r != 2) {
                ((Spliterator.InterfaceC2775d) this.f906a).forEachRemaining(obj);
                return;
            }
            if (abstractC3055j4 == null) {
                abstractC3055j4 = mo564t(128);
            } else {
                abstractC3055j4.f1110b = 0;
            }
            long j = 0;
            while (((Spliterator.InterfaceC2775d) this.f906a).tryAdvance(abstractC3055j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC3055j4.mo448b(obj, m563p(j));
        }
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2839k.m601d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2839k.m600e(this, i);
    }

    /* renamed from: s */
    protected abstract void mo565s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC3055j4 mo564t(int i);

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: tryAdvance */
    public boolean m566n(Object obj) {
        Objects.requireNonNull(obj);
        while (m561r() != 1 && ((Spliterator.InterfaceC2775d) this.f906a).tryAdvance(this)) {
            if (m563p(1L) == 1) {
                mo565s(obj);
                return true;
            }
        }
        return false;
    }
}
