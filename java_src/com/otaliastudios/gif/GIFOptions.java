package com.otaliastudios.gif;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.otaliastudios.gif.sink.DataSink;
import com.otaliastudios.gif.sink.DefaultDataSink;
import com.otaliastudios.gif.source.DataSource;
import com.otaliastudios.gif.source.FilePathDataSource;
import com.otaliastudios.gif.strategy.DefaultStrategies;
import com.otaliastudios.gif.strategy.Strategy;
import com.otaliastudios.gif.time.DefaultTimeInterpolator;
import com.otaliastudios.gif.time.TimeInterpolator;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
/* loaded from: classes4.dex */
public class GIFOptions {
    private DataSink dataSink;
    private List<DataSource> dataSources;
    GIFListener listener;
    Handler listenerHandler;
    private int rotation;
    private Strategy strategy;
    private TimeInterpolator timeInterpolator;

    private GIFOptions() {
    }

    public DataSink getDataSink() {
        return this.dataSink;
    }

    public List<DataSource> getDataSources() {
        return this.dataSources;
    }

    public Strategy getStrategy() {
        return this.strategy;
    }

    public int getRotation() {
        return this.rotation;
    }

    public TimeInterpolator getTimeInterpolator() {
        return this.timeInterpolator;
    }

    /* loaded from: classes4.dex */
    public static class Builder {
        private DataSink dataSink;
        private final List<DataSource> dataSources = new ArrayList();
        private GIFListener listener;
        private Handler listenerHandler;
        private int rotation;
        private Strategy strategy;
        private TimeInterpolator timeInterpolator;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder(String str) {
            this.dataSink = new DefaultDataSink(str);
        }

        public Builder addDataSource(DataSource dataSource) {
            this.dataSources.add(dataSource);
            return this;
        }

        public Builder addDataSource(Context context, String str) {
            return addDataSource(new FilePathDataSource(context, str));
        }

        public Builder setStrategy(Strategy strategy) {
            this.strategy = strategy;
            return this;
        }

        public Builder setListener(GIFListener gIFListener) {
            this.listener = gIFListener;
            return this;
        }

        public GIFOptions build() {
            if (this.listener == null) {
                throw new IllegalStateException("listener can't be null");
            }
            if (this.dataSources.isEmpty()) {
                throw new IllegalStateException("we need at least one data source");
            }
            int i = this.rotation;
            if (i != 0 && i != 90 && i != 180 && i != 270) {
                throw new IllegalArgumentException("Accepted values for rotation are 0, 90, 180, 270");
            }
            if (this.listenerHandler == null) {
                Looper myLooper = Looper.myLooper();
                if (myLooper == null) {
                    myLooper = Looper.getMainLooper();
                }
                this.listenerHandler = new Handler(myLooper);
            }
            if (this.strategy == null) {
                this.strategy = DefaultStrategies.for720x1280();
            }
            if (this.timeInterpolator == null) {
                this.timeInterpolator = new DefaultTimeInterpolator();
            }
            GIFOptions gIFOptions = new GIFOptions();
            gIFOptions.listener = this.listener;
            gIFOptions.dataSources = this.dataSources;
            gIFOptions.dataSink = this.dataSink;
            gIFOptions.listenerHandler = this.listenerHandler;
            gIFOptions.strategy = this.strategy;
            gIFOptions.rotation = this.rotation;
            gIFOptions.timeInterpolator = this.timeInterpolator;
            return gIFOptions;
        }

        public Future<Void> compress() {
            return GIFCompressor.getInstance().compress(build());
        }
    }
}
