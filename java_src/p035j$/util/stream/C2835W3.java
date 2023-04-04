package p035j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p035j$.util.AbstractC2625I;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.C2673k;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C2835W3 extends AbstractC2850Z3 implements InterfaceC2674l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2835W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2835W3(int i) {
        super(i);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3, java.lang.Iterable, p035j$.lang.InterfaceC2575e
    /* renamed from: B */
    public InterfaceC2701s.InterfaceC2703b spliterator() {
        return new C2830V3(this, 0, this.f935c, 0, this.f934b);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    public void accept(int i) {
        m473A();
        int i2 = this.f934b;
        this.f934b = i2 + 1;
        ((int[]) this.f870e)[i2] = i;
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: c */
    public Object mo472c(int i) {
        return new int[i];
    }

    @Override // p035j$.lang.InterfaceC2575e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2674l) {
            mo285g((InterfaceC2674l) consumer);
        } else if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2625I.m630g(spliterator());
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: t */
    protected void mo471t(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2674l interfaceC2674l = (InterfaceC2674l) obj2;
        while (i < i2) {
            interfaceC2674l.accept(iArr[i]);
            i++;
        }
    }

    public String toString() {
        int[] iArr = (int[]) mo286e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f935c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f935c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: u */
    protected int mo470u(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: z */
    protected Object[] mo465z(int i) {
        return new int[i];
    }
}
