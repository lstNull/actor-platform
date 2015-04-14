package im.actor.model.js.providers.threading;

import im.actor.model.util.AtomicLongCompat;

/**
 * Created by ex3ndr on 21.02.15.
 */
public class JsAtomicLong extends AtomicLongCompat {
    private long value;

    public JsAtomicLong(long value) {
        this.value = value;
    }

    @Override
    public long get() {
        return value;
    }

    @Override
    public long incrementAndGet() {
        return ++value;
    }

    @Override
    public long getAndIncrement() {
        return value++;
    }

    @Override
    public void set(long v) {
        value = v;
    }
}