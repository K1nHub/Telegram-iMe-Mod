package moxy;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Deprecated
/* loaded from: classes6.dex */
public @interface RegisterMoxyReflectorPackages {
    String[] value();
}
