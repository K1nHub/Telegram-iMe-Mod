package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2651I;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.C2699k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2700l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C2861W3 extends AbstractC2876Z3 implements InterfaceC2700l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2861W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2861W3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2876Z3, java.lang.Iterable, p034j$.lang.InterfaceC2601e
    /* renamed from: B */
    public InterfaceC2727s.InterfaceC2729b spliterator() {
        return new C2856V3(this, 0, this.f933c, 0, this.f932b);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    public void accept(int i) {
        m464A();
        int i2 = this.f932b;
        this.f932b = i2 + 1;
        ((int[]) this.f868e)[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2876Z3
    /* renamed from: c */
    public Object mo463c(int i) {
        return new int[i];
    }

    @Override // p034j$.lang.InterfaceC2601e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2700l) {
            mo276g((InterfaceC2700l) consumer);
        } else if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2651I.m620g(spliterator());
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }

    @Override // p034j$.util.stream.AbstractC2876Z3
    /* renamed from: t */
    protected void mo462t(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2700l interfaceC2700l = (InterfaceC2700l) obj2;
        while (i < i2) {
            interfaceC2700l.accept(iArr[i]);
            i++;
        }
    }

    public String toString() {
        int[] iArr = (int[]) mo277e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f933c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f933c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2876Z3
    /* renamed from: u */
    protected int mo461u(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2876Z3
    /* renamed from: z */
    protected Object[] mo456z(int i) {
        return new int[i];
    }
}
