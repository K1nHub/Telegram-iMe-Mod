package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.collections.CollectionsKt;
/* compiled from: SerialDescriptor.kt */
/* loaded from: classes4.dex */
public interface SerialDescriptor {
    List<Annotation> getAnnotations();

    List<Annotation> getElementAnnotations(int i);

    SerialDescriptor getElementDescriptor(int i);

    int getElementIndex(String str);

    String getElementName(int i);

    int getElementsCount();

    SerialKind getKind();

    String getSerialName();

    boolean isElementOptional(int i);

    boolean isInline();

    boolean isNullable();

    /* compiled from: SerialDescriptor.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static boolean isInline(SerialDescriptor serialDescriptor) {
            return false;
        }

        public static boolean isNullable(SerialDescriptor serialDescriptor) {
            return false;
        }

        public static List<Annotation> getAnnotations(SerialDescriptor serialDescriptor) {
            return CollectionsKt.emptyList();
        }
    }
}
