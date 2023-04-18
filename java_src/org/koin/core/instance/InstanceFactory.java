package org.koin.core.instance;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.error.InstanceCreationException;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: InstanceFactory.kt */
/* loaded from: classes4.dex */
public abstract class InstanceFactory<T> {
    private final BeanDefinition<T> beanDefinition;

    static {
        new Companion(null);
    }

    public abstract T get(InstanceContext instanceContext);

    public InstanceFactory(BeanDefinition<T> beanDefinition) {
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
        this.beanDefinition = beanDefinition;
    }

    public final BeanDefinition<T> getBeanDefinition() {
        return this.beanDefinition;
    }

    public T create(InstanceContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Logger logger = context.getLogger();
        String str = "| (+) '" + this.beanDefinition + '\'';
        Level level = Level.DEBUG;
        if (logger.isAt(level)) {
            logger.display(level, str);
        }
        try {
            ParametersHolder parameters = context.getParameters();
            if (parameters == null) {
                parameters = ParametersHolderKt.emptyParametersHolder();
            }
            return this.beanDefinition.getDefinition().invoke(context.getScope(), parameters);
        } catch (Exception e) {
            String stackTrace = KoinPlatformTools.INSTANCE.getStackTrace(e);
            Logger logger2 = context.getLogger();
            String str2 = "* Instance creation error : could not create instance for '" + this.beanDefinition + "': " + stackTrace;
            Level level2 = Level.ERROR;
            if (logger2.isAt(level2)) {
                logger2.display(level2, str2);
            }
            throw new InstanceCreationException("Could not create instance for '" + this.beanDefinition + '\'', e);
        }
    }

    public boolean equals(Object obj) {
        InstanceFactory instanceFactory = obj instanceof InstanceFactory ? (InstanceFactory) obj : null;
        return Intrinsics.areEqual(this.beanDefinition, instanceFactory != null ? instanceFactory.beanDefinition : null);
    }

    public int hashCode() {
        return this.beanDefinition.hashCode();
    }

    /* compiled from: InstanceFactory.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
