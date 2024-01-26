package org.ton.logger;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import org.ton.logger.Logger;
/* compiled from: PrintLnLogger.kt */
/* loaded from: classes6.dex */
public final class PrintLnLogger implements Logger {
    private final Channel<Function0<String>> channel;
    private final Job job;
    private Logger.Level level;
    private final Function0<String> name;

    public PrintLnLogger(Function0<String> name, Logger.Level level) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(level, "level");
        this.name = name;
        this.level = level;
        this.channel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        launch$default = BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, null, null, new PrintLnLogger$job$1(this, null), 3, null);
        this.job = launch$default;
    }

    @Override // org.ton.logger.Logger
    public void debug(Function0<String> function0) {
        Logger.DefaultImpls.debug(this, function0);
    }

    @Override // org.ton.logger.Logger
    public void info(Function0<String> function0) {
        Logger.DefaultImpls.info(this, function0);
    }

    @Override // org.ton.logger.Logger
    public void warn(Function0<String> function0) {
        Logger.DefaultImpls.warn(this, function0);
    }

    public Logger.Level getLevel() {
        return this.level;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PrintLnLogger(final String name, Logger.Level level) {
        this(new Function0<String>() { // from class: org.ton.logger.PrintLnLogger.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return name;
            }
        }, level);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(level, "level");
    }

    public /* synthetic */ PrintLnLogger(String str, Logger.Level level, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? Logger.Level.INFO : level);
    }

    @Override // org.ton.logger.Logger
    public void log(final Logger.Level level, final Function0<String> message) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(message, "message");
        if (level.compareTo(getLevel()) >= 0) {
            this.channel.mo2103trySendJP2dKIU(new Function0<String>() { // from class: org.ton.logger.PrintLnLogger$log$messageLambda$1

                /* compiled from: PrintLnLogger.kt */
                /* loaded from: classes6.dex */
                public /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                    static {
                        int[] iArr = new int[Logger.Level.values().length];
                        try {
                            iArr[Logger.Level.TRACE.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[Logger.Level.DEBUG.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        try {
                            iArr[Logger.Level.WARN.ordinal()] = 3;
                        } catch (NoSuchFieldError unused3) {
                        }
                        try {
                            iArr[Logger.Level.FATAL.ordinal()] = 4;
                        } catch (NoSuchFieldError unused4) {
                        }
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    Function0 function0;
                    Function0 function02;
                    Function0 function03;
                    Function0 function04;
                    int i = WhenMappings.$EnumSwitchMapping$0[Logger.Level.this.ordinal()];
                    if (i == 1 || i == 2) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("\u001b[37m[");
                        function0 = this.name;
                        sb.append((String) function0.invoke());
                        sb.append("] [");
                        sb.append(Logger.Level.this.name());
                        sb.append("] ");
                        sb.append(message.invoke());
                        sb.append("\u001b[0m");
                        return sb.toString();
                    } else if (i == 3) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("\u001b[33m[");
                        function02 = this.name;
                        sb2.append((String) function02.invoke());
                        sb2.append("] [");
                        sb2.append(Logger.Level.this.name());
                        sb2.append("] ");
                        sb2.append(message.invoke());
                        sb2.append("\u001b[0m");
                        return sb2.toString();
                    } else if (i == 4) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("\u001b[31m[");
                        function03 = this.name;
                        sb3.append((String) function03.invoke());
                        sb3.append("] [");
                        sb3.append(Logger.Level.this.name());
                        sb3.append("] ");
                        sb3.append(message.invoke());
                        sb3.append("\u001b[0m");
                        return sb3.toString();
                    } else {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append('[');
                        function04 = this.name;
                        sb4.append((String) function04.invoke());
                        sb4.append("] [");
                        sb4.append(Logger.Level.this.name());
                        sb4.append("] ");
                        sb4.append(message.invoke());
                        return sb4.toString();
                    }
                }
            });
        }
    }
}
