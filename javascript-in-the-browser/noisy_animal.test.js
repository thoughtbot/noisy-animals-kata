//const createNoisyAnimal = window.createNoisyAnimal;

function captureOutput(fn) {
  const originalLog = console.log;
  let out = '';
  console.log = (message) => {
    out += `${message}\n`;
  };

  try {
    fn();
  } finally {
    console.log = originalLog;
  }

  return out;
}

QUnit.module('when the animal is a cat');

QUnit.test('makes a meow noise twice', (assert) => {
  const animal = createNoisyAnimal('cat');
  const output = captureOutput(() => animal.makeNoise());

  assert.equal(output, 'meow\nmeow\n');
});

QUnit.module('when the animal is a dog');

QUnit.test('makes a woof noise twice', (assert) => {
  const animal = createNoisyAnimal('dog');
  const output = captureOutput(() => animal.makeNoise());

  assert.equal(output, 'woof\nwoof\n');
});

QUnit.module('when the animal is a leopard');

QUnit.test('makes a growl noise twice', (assert) => {
  const animal = createNoisyAnimal('leopard');
  const output = captureOutput(() => animal.makeNoise());

  assert.equal(output, 'growl\ngrowl\n');
});

QUnit.module('when the animal is unusually quiet');

QUnit.test('cat goes meow', (assert) => {
  const animal = createNoisyAnimal('cat');
  const output = captureOutput(() => animal.makeNoise({ loud: false }));

  assert.equal(output, 'meow\n');
});

QUnit.test('dog goes woof', (assert) => {
  const animal = createNoisyAnimal('dog');
  const output = captureOutput(() => animal.makeNoise({ loud: false }));

  assert.equal(output, 'woof\n');
});

QUnit.test('leopard goes growl', (assert) => {
  const animal = createNoisyAnimal('leopard');
  const output = captureOutput(() => animal.makeNoise({ loud: false }));

  assert.equal(output, 'growl\n');
});

QUnit.module('when the animal is really a bird');

QUnit.test('loud owls hoot twice', (assert) => {
  const animal = createNoisyAnimal('owl');
  const output = captureOutput(() => animal.makeNoise());

  assert.equal(output, 'hoot\nhoot\n');
});

QUnit.test('loud eagles caw twice', (assert) => {
  const animal = createNoisyAnimal('eagle');
  const output = captureOutput(() => animal.makeNoise());

  assert.equal(output, 'caw\ncaw\n');
});

QUnit.test('loud hadedahs squawk twice', (assert) => {
  const animal = createNoisyAnimal('hadedah');
  const output = captureOutput(() => animal.makeNoise());

  assert.equal(output, 'squawk\nsquawk\n');
});

QUnit.test('quiet owls hoot', (assert) => {
  const animal = createNoisyAnimal('owl');
  const output = captureOutput(() => animal.makeNoise({ loud: false }));

  assert.equal(output, 'hoot\n');
});

QUnit.test('quiet eagles caw', (assert) => {
  const animal = createNoisyAnimal('eagle');
  const output = captureOutput(() => animal.makeNoise({ loud: false }));

  assert.equal(output, 'caw\n');
});

QUnit.test('quiet hadedahs do not exist', (assert) => {
  const animal = createNoisyAnimal('hadedah');

  assert.throws(() => {
    animal.makeNoise({ loud: false });
  }, /no such thing/);
});
